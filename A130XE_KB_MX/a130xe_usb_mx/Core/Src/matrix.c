/*
Copyright 2011 Jun Wako <wakojun@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
 * scan matrix
 */
#include <stdint.h>
#include <stdbool.h>
#include "main.h"
#include "wait.h"
#include "syscall.h"
#include "print.h"
#include "debug.h"
#include "util.h"
#include "matrix.h"


#ifndef DEBOUNCE
#   define DEBOUNCE 5
#endif
static uint8_t debouncing = DEBOUNCE;

/* matrix state(1:on, 0:off) */
static matrix_row_t matrix[MATRIX_ROWS];
static matrix_row_t matrix_debouncing[MATRIX_ROWS];

#ifdef MATRIX_HAS_GHOST
bool matrix_has_ghost_in_row(uint8_t row);
#endif
static matrix_row_t read_cols(void);
static void unselect_rows(void);
static void select_row(uint8_t row);
static void prepare_cols(void);

inline
uint8_t matrix_rows(void)
{
    return MATRIX_ROWS;
}

inline
uint8_t matrix_cols(void)
{
    return MATRIX_COLS;
}

static
void prepare_cols(void)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};
	int z;
	for (z = 0; z < KEYBOARD_COLUMNS; z++)
	{
		/* Configure GPIO pins : COL as INPUT with internal PULL UP */
		GPIO_InitStruct.Pin = lut_col[z].pin;
		GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
		GPIO_InitStruct.Pull = GPIO_PULLUP;
		HAL_GPIO_Init(lut_col[z].port, &GPIO_InitStruct);
	}
}

static void matrix_led_start(int seconds)
{
	int c1 = 100;
	int c2 = 50;
	int elapsed = 0; // msec
	seconds *= 1000; // msec
	for(;;)
	{
		LED_CAPS_LOCK_ON();
		LED_NUM_LOCK_ON();
		LED_SCROLL_LOCK_ON();
		LED_COMPOSE_ON();
		LED_KANA_ON();
		wait_ms(c1);
		LED_CAPS_LOCK_OFF();
		LED_NUM_LOCK_OFF();
		LED_SCROLL_LOCK_OFF();
		LED_COMPOSE_OFF();
		LED_KANA_OFF();
		wait_ms(c2);
		elapsed += (c1 + c2);
		if (elapsed > seconds)
			break;
	}
}

void matrix_init(void)
{
    // initialize row and col
    // now rows
    unselect_rows();
	// ...and now initialize columns
	prepare_cols();

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }

    //debug
    debug_matrix = false;
    debug_enable = false;
    debug_keyboard = false;
    matrix_led_start(2);

}

uint8_t matrix_scan(void)
{
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_row(i);
        _delay_us(30);  // without this wait read unstable value.
        matrix_row_t cols = read_cols();
        if (matrix_debouncing[i] != cols) {
            matrix_debouncing[i] = cols;
            if (debouncing) {
                debug("bounce!: "); debug_hex(debouncing); debug("\r\n");
            }
            debouncing = DEBOUNCE;
        }
        unselect_rows();
    }

    if (debouncing) {
        if (--debouncing) {
            _delay_ms(1);
        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }

    }
    return 1;
}

bool matrix_is_modified(void)
{
    if (debouncing) return false;
    return true;
}

inline
bool matrix_is_on(uint8_t row, uint8_t col)
{
    return (matrix[row] & ((matrix_row_t)1<<col));
}

inline
matrix_row_t matrix_get_row(uint8_t row)
{
    return matrix[row];
}

void matrix_print_row(uint8_t row)
{
#ifndef NO_PRINT
	#if (MATRIX_COLS <= 8)
		xprintf("\r\n  01234567\r\n");
	#elif (MATRIX_COLS <= 16)
		xprintf("\r\n  012345679ABCDEF\r\n");
	#elif (MATRIX_COLS <= 32)
		xprintf("\r\n  012345679ABCDEF012345679ABCDEF\r\n");
	#endif

		xprintf("%X:", row&0xF);
	#if (MATRIX_COLS <= 8)
			// Print 8 bits in reverse order (0..7)
			xprintfbin_rev(matrix_get_row(row), 8);
	#elif (MATRIX_COLS <= 16)
			// Print 16 bits in reverse order (0..F)
			xprintfbin_rev(matrix_get_row(row), 16);
	#elif (MATRIX_COLS <= 32)
			// Print 32 bits in reverse order (0..F0..F)
			xprintfbin_rev(matrix_get_row(row), 32);
	#endif
	#ifdef MATRIX_HAS_GHOST
			xprintf("%s", matrix_has_ghost_in_row(row) ?  " <ghost" : "" );
	#else
			xprintf(" ");
	#endif
#endif
}

void matrix_print(void)
{
#ifndef NO_PRINT
	#if (MATRIX_COLS <= 8)
		xprintf("\r\n  01234567\r\n");
	#elif (MATRIX_COLS <= 16)
		xprintf("\r\n  012345679ABCDEF\r\n");
	#elif (MATRIX_COLS <= 32)
		xprintf("\r\n  012345679ABCDEF012345679ABCDEF\r\n");
	#endif

		for (uint8_t row = 0; row < matrix_rows(); row++) {
			xprintf("%X:", row&0xF);
	#if (MATRIX_COLS <= 8)
			// Print 8 bits in reverse order (0..7)
			xprintfbin_rev(matrix_get_row(row), 8);
	#elif (MATRIX_COLS <= 16)
			// Print 16 bits in reverse order (0..F)
			xprintfbin_rev(matrix_get_row(row), 16);
	#elif (MATRIX_COLS <= 32)
			// Print 32 bits in reverse order (0..F0..F)
			xprintfbin_rev(matrix_get_row(row), 32);
	#endif
	#ifdef MATRIX_HAS_GHOST
			xprintf("%s", matrix_has_ghost_in_row(row) ?  " <ghost" : "" );
	#else
			xprintf(" ");
	#endif
			xprintf("\r\n");
		}
#endif
}

#ifdef MATRIX_HAS_GHOST
inline
bool matrix_has_ghost_in_row(uint8_t row)
{
    // no ghost exists in case less than 2 keys on
    if (((matrix[row] - 1) & matrix[row]) == 0)
        return false;

    // ghost exists in case same state as other row
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        if (i != row && (matrix[i] & matrix[row]))
            return true;
    }
    return false;
}
#endif

inline
static matrix_row_t read_cols(void)
{
	/* Read all columns and put everything in a 16 bit word
	 *
	 * C0 = Bit0
	 * C1 = Bit1
	 * C2 = Bit2
	 * ...
	 * Cn = Bitn
	 *
	 * */
	matrix_row_t readcol = 0; // Not pressed as default
	int z;
	int temp;
	for (z = 0; z < KEYBOARD_COLUMNS; z++)
	{
		temp = HAL_GPIO_ReadPin( lut_col[z].port, lut_col[z].pin );
		readcol |= (temp << z);
	}

	return readcol;
}

inline
static void unselect_rows(void)
{
	/* Put all rows as Hi-Z */
	int z;
	for (z = 0; z < KEYBOARD_ROWS; z++)
	{
		GPIO_InitTypeDef GPIO_InitStruct = {0};

		/*Configure GPIO as INPUT Hi-Z */
		GPIO_InitStruct.Pin = lut_row[z].pin;
		GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
		GPIO_InitStruct.Pull = GPIO_NOPULL;
		HAL_GPIO_Init(lut_row[z].port, &GPIO_InitStruct);
	}
}

inline
static void select_row(uint8_t row)
{
	// Output low to select
	// So first, put the low level in the output register, then
	// configure the pin as output.

	GPIO_InitTypeDef GPIO_InitStruct = {0};

	// Output low
	HAL_GPIO_WritePin(lut_row[row].port, lut_row[row].pin, GPIO_PIN_RESET);

	// then configure it as output
	GPIO_InitStruct.Pin = lut_row[row].pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(lut_row[row].port, &GPIO_InitStruct);
}
