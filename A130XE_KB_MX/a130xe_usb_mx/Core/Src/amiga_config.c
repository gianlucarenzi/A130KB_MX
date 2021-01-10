#include <stdint.h>
#include "main.h"
#include "keyboard.h"
#include "keycode.h"
#include "amiga_config.h"

#define KC_SPARE_1 KC_NO
#define KC_SPARE_2 KC_NO
#define KC_SPARE_3 KC_NO

const uint8_t keymaps[][KEYBOARD_ROWS][KEYBOARD_COLUMNS] = {
	[0] = {
		{ KC_ESC,     KC_KP_LPAREN, KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_KP_RPAREN, KC_F6,   KC_PSLS, KC_F7,   KC_F8,      KC_F9,      KC_F10,  KC_HELP,  KC_NO },
		{ KC_GRV,    KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_MINS,    KC_EQL,     KC_BSLS, KC_UP,    KC_NO },
		{ KC_TAB,     KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_LBRC,    KC_RBRC,    KC_ENT,  KC_LEFT,  KC_NO },
		{ KC_CAPS,    KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_QUOT,    KC_SPARE_1, KC_DEL,  KC_RIGHT, KC_NO },
		{ KC_SPARE_2, KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH, KC_SPARE_3, KC_SPC,     KC_BSPC, KC_DOWN,  KC_NO },
		{ KC_PAST,    KC_PPLS, KC_P9,   KC_P6,   KC_P3,   KC_PCMM, KC_P8,   KC_P5,   KC_P2,   KC_PENT, KC_P7,   KC_P4,      KC_P1,      KC_P0,   KC_PMNS,  KC_NO },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_RSFT },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_RALT },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_RGUI },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_LCTRL },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_LSFT },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_LALT },
		{ KC_NO,    KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO,    KC_NO,    KC_NO, KC_NO,  KC_LGUI },
	},
};

gpioPort_t lut_row_amiga[ KEYBOARD_ROWS ] = {
	{ .port = ROW0_GPIO_Port,  .pin = ROW0_Pin },
	{ .port = ROW1_GPIO_Port,  .pin = ROW1_Pin },
	{ .port = ROW2_GPIO_Port,  .pin = ROW2_Pin },
	{ .port = ROW3_GPIO_Port,  .pin = ROW3_Pin },
	{ .port = ROW4_GPIO_Port,  .pin = ROW4_Pin },
	{ .port = ROW5_GPIO_Port,  .pin = ROW5_Pin },
	{ .port = ROW6_GPIO_Port,  .pin = ROW6_Pin },
	{ .port = ROW7_GPIO_Port,  .pin = ROW7_Pin },
	{ .port = ROW8_GPIO_Port,  .pin = ROW8_Pin },
	{ .port = ROW9_GPIO_Port,  .pin = ROW9_Pin },
	{ .port = ROW10_GPIO_Port, .pin = ROW10_Pin },
	{ .port = ROW11_GPIO_Port, .pin = ROW11_Pin },
	{ .port = ROW12_GPIO_Port, .pin = ROW12_Pin },
};

gpioPort_t lut_col_amiga[ KEYBOARD_COLUMNS ] = {
	{ .port = COL0_GPIO_Port,  .pin = COL0_Pin },
	{ .port = COL1_GPIO_Port,  .pin = COL1_Pin },
	{ .port = COL2_GPIO_Port,  .pin = COL2_Pin },
	{ .port = COL3_GPIO_Port,  .pin = COL3_Pin },
	{ .port = COL4_GPIO_Port,  .pin = COL4_Pin },
	{ .port = COL5_GPIO_Port,  .pin = COL5_Pin },
	{ .port = COL6_GPIO_Port,  .pin = COL6_Pin },
	{ .port = COL7_GPIO_Port,  .pin = COL7_Pin },
	{ .port = COL8_GPIO_Port,  .pin = COL8_Pin },
	{ .port = COL9_GPIO_Port,  .pin = COL9_Pin },
	{ .port = COL10_GPIO_Port, .pin = COL10_Pin },
	{ .port = COL11_GPIO_Port, .pin = COL11_Pin },
	{ .port = COL12_GPIO_Port, .pin = COL12_Pin },
	{ .port = COL13_GPIO_Port, .pin = COL13_Pin },
	{ .port = COL14_GPIO_Port, .pin = COL14_Pin },
	{ .port = COL15_GPIO_Port, .pin = COL15_Pin },
};

void amiga_kb_init(void) { }
void amiga_task(void) { }
