#ifndef __KEYBOARD_H_INCLUDED__
#define __KEYBOARD_H_INCLUDED__

#include <inttypes.h>
#include <stdbool.h>
#include "stm32f4xx_hal.h"
#include "keycode.h"

typedef struct {
	int rows;
	int columns;
} keyboard_type_t;

typedef struct {
	GPIO_TypeDef *port;
	uint16_t      pin;
} gpioPort_t;

/* key matrix position */
typedef struct {
	uint8_t col;
	uint8_t row;
} keypos_t;

/* key event */
typedef struct {
	keypos_t key;
	bool     pressed;
	uint16_t time;
} keyevent_t;

/* equivalent test of keypos_t */
#define KEYEQ(keya, keyb)       ((keya).row == (keyb).row && (keya).col == (keyb).col)

/* Rules for No Event:
 * 1) (time == 0) to handle (keyevent_t){} as empty event
 * 2) Matrix(255, 255) to make TICK event available
 */
static inline bool IS_NOEVENT(keyevent_t event) { return event.time == 0 || (event.key.row == 255 && event.key.col == 255); }
static inline bool IS_PRESSED(keyevent_t event) { return (!IS_NOEVENT(event) && event.pressed); }
static inline bool IS_RELEASED(keyevent_t event) { return (!IS_NOEVENT(event) && !event.pressed); }

/* Tick event */
#define TICK                    (keyevent_t){           \
    .key = (keypos_t){ .row = 255, .col = 255 },           \
    .pressed = false,                                   \
    .time = (timer_read() | 1)                          \
}

extern void keyboard_init(void);
extern void keyboard_task(void);
extern void keyboard_set_leds(uint8_t leds);
extern __attribute__ ((weak)) void led_set(uint8_t usb_led);

#endif
