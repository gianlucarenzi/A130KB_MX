#ifndef __CONFIG_ATARI_INCLUDED__
#define __CONFIG_ATARI_INCLUDED__

#include "main.h"
#include "keyboard.h"
#include "keycode.h"

#define KEYBOARD_COLUMNS 13
#define KEYBOARD_ROWS    9

extern uint8_t keyboard_matrix[KEYBOARD_ROWS][KEYBOARD_COLUMNS];
extern gpioPort_t lut_row[ KEYBOARD_ROWS ];
extern gpioPort_t lut_col[ KEYBOARD_COLUMNS ];

#endif
