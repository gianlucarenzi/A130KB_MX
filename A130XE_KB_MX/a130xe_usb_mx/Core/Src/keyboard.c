/*
Copyright 2011,2012,2013 Jun Wako <wakojun@gmail.com>

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
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include "stm32f4xx_ll_gpio.h"
#include "stm32f4xx_it.h"
#include "syscall.h"
#include "debug.h"
#include "main.h"
#include "usb_device.h"
#include "keyboard.h"
#include "config.h"
#include "matrix.h"
#include "hook.h"
#include "host.h"

static int debuglevel = DBG_INFO;

#ifdef MATRIX_HAS_GHOST
static bool has_ghost_in_row(uint8_t row)
{
    matrix_row_t matrix_row = matrix_get_row(row);
    // No ghost exists when less than 2 keys are down on the row
    if (((matrix_row - 1) & matrix_row) == 0)
        return false;

    // Ghost occurs when the row shares column line with other row
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        if (i != row && (matrix_get_row(i) & matrix_row))
            return true;
    }
    return false;
}
#endif

void keyboard_setup(void)
{
	matrix_setup();
}

void keyboard_init(void)
{
	timer_init();
	matrix_init();
}

/*
 * Do keyboard routine jobs: scan matrix, light LEDs, ...
 * This is repeatedly called as fast as possible.
 */
void keyboard_task(void)
{
	static matrix_row_t matrix_prev[MATRIX_ROWS];
	#ifdef MATRIX_HAS_GHOST
	static matrix_row_t matrix_ghost[MATRIX_ROWS];
	#endif
	static uint8_t led_status = 0;
	matrix_row_t matrix_row = 0;
	matrix_row_t matrix_change = 0;

	matrix_scan();
	for (uint8_t r = 0; r < MATRIX_ROWS; r++) {
		matrix_row = matrix_get_row(r);
		matrix_change = matrix_row ^ matrix_prev[r];
		if (matrix_change) {
#ifdef MATRIX_HAS_GHOST
			if (has_ghost_in_row(r)) {
				/* Keep track of whether ghosted status has changed for
				 * debugging. But don't update matrix_prev until un-ghosted, or
				 * the last key would be lost.
				 */
				if (debug_matrix && matrix_ghost[r] != matrix_row) {
					matrix_print_row(r);
				}
				matrix_ghost[r] = matrix_row;
				continue;
			}
			matrix_ghost[r] = matrix_row;
#endif
			if (debug_matrix) matrix_print();
			matrix_row_t col_mask = 1;
			for (uint8_t c = 0; c < MATRIX_COLS; c++, col_mask <<= 1) {
				if (matrix_change & col_mask) {
					keyevent_t e = (keyevent_t){
						.key = (keypos_t){ .row = r, .col = c },
#ifdef __ATARI__
						// As today, Atari Keyboard has a negative logic! :-/
						.pressed = !(matrix_row & col_mask),
#else
						.pressed = (matrix_row & col_mask),
#endif
						.time = (timer_read() | 1) /* time should not be 0 */
					};
					action_exec(e);
					hook_matrix_change(e);
					// record a processed key
					matrix_prev[r] ^= col_mask;

					// This can miss stroke when scan matrix takes long like Topre
					// process a key per task call
					//goto MATRIX_LOOP_END;
				}
			}
		}
	}
	// call with pseudo tick event when no real key event.
	action_exec(TICK);

//MATRIX_LOOP_END:

	hook_keyboard_loop();

	// update LED
	if (led_status != host_keyboard_leds()) {
		led_status = host_keyboard_leds();
		if (debug_keyboard) {
			DBG_I("LED: %02X\n\r", led_status);
		}
		hook_keyboard_leds_change(led_status);
	}
}

__attribute__ ((weak))
void keyboard_set_leds(uint8_t leds)
{
	led_set(leds);
}

__attribute__ ((weak))
void led_set(uint8_t usb_led) { }
