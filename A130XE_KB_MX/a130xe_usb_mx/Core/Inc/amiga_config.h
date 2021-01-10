#ifndef __CONFIG_AMIGA_INCLUDED__
#define __CONFIG_AMIGA_INCLUDED__

#include "main.h"
#include "keyboard.h"
#include "keycode.h"
#include "action.h"

#define KEYBOARD_COLUMNS 16
#define KEYBOARD_ROWS    13

extern const uint8_t keymaps[][KEYBOARD_ROWS][KEYBOARD_COLUMNS];
extern gpioPort_t lut_row[ KEYBOARD_ROWS ];
extern gpioPort_t lut_col[ KEYBOARD_COLUMNS ];
extern void amiga_kb_init(void);
extern void amiga_task(void);

static const action_t PROGMEM fn_actions[] = {};

#endif
