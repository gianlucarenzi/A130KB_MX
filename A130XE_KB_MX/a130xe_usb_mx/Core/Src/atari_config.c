#include <stdint.h>
#include "main.h"
#include "keyboard.h"
#include "keycode.h"
#include "atari_config.h"
#include "debug.h"

static int debuglevel = DBG_INFO;

/* This keymap should be valid with Atari XL and XE (F1..F4) keys as Atari 1200XL */
const uint8_t keymaps[][KEYBOARD_ROWS][KEYBOARD_COLUMNS] = {
	[0] = {
		{ KC_7,  KC_NO,   KC_8,  KC_9,    KC_0,    KC_KP_LT, KC_KP_GT, KC_DEL,  KC_BRK,   KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_6,  KC_NO,   KC_5,  KC_4,    KC_3,    KC_2,     KC_1,     KC_ESC,  KC_NO,    KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_U,  KC_NO,   KC_I,  KC_O,    KC_P,    KC_MINS,  KC_EQL,   KC_ENT,  KC_NO,    KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_Y,  KC_NO,   KC_T,  KC_R,    KC_E,    KC_W,     KC_Q,     KC_TAB,  KC_NO,    KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_F1, KC_J,    KC_K,  KC_L,    KC_SCLN, KC_PPLS,  KC_PAST,  KC_F2,   KC_LCTRL, KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_NO, KC_H,    KC_G,  KC_F,    KC_D,    KC_S,     KC_A,     KC_CAPS, KC_NO,    KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_N,  KC_SPC,  KC_M,  KC_COMM, KC_DOT,  KC_SLSH,  KC_RGUI,  KC_NO,   KC_NO,    KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_F3, KC_HELP, KC_B,  KC_V,    KC_C,    KC_X,     KC_Z,     KC_F4,   KC_LSFT,  KC_NO,                       KC_NO,     KC_NO,                 KC_NO },
		{ KC_NO, KC_NO,   KC_NO, KC_NO,   KC_NO,   KC_NO,    KC_NO,    KC_NO,   KC_NO,    KC_SYSTEM_POWER /* START */, KC_SELECT, KC_OPER /* OPTION? */, KC_SYSREQ /* RESET */ },
	},
};

gpioPort_t lut_row[ KEYBOARD_ROWS ] = {
	{ .port = ROW0_GPIO_Port, .pin = ROW0_Pin },
	{ .port = ROW1_GPIO_Port, .pin = ROW1_Pin },
	{ .port = ROW2_GPIO_Port, .pin = ROW2_Pin },
	{ .port = ROW3_GPIO_Port, .pin = ROW3_Pin },
	{ .port = ROW4_GPIO_Port, .pin = ROW4_Pin },
	{ .port = ROW5_GPIO_Port, .pin = ROW5_Pin },
	{ .port = ROW6_GPIO_Port, .pin = ROW6_Pin },
	{ .port = ROW7_GPIO_Port, .pin = ROW7_Pin },
	{ .port = ROW8_GPIO_Port, .pin = ROW8_Pin },
};

gpioPort_t lut_col[ KEYBOARD_COLUMNS ] = {
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
};

uint8_t keymap_key_to_keycode(uint8_t layer, keypos_t key)
{
	return keymaps[(layer)][key.col][key.row];
}

action_t keymap_fn_to_action(uint8_t keycode)
{
    return (action_t) fn_actions[FN_INDEX(keycode)];
}

void hook_matrix_change(keyevent_t event, void *caller)
{
	/*
	 * https://github.com/tmk/tmk_keyboard/blob/6271878a021fcf578b71e2b7e97cd43786efa7dd/tmk_core/common/action.c#L45
	 */

	/* Be careful: the row and columns are SWAPPED. So the keycode is adapted on the fly to this! */
	DBG_N("MATRIX CHANGED EVENT KEY: ROW: %d - COL: %d -- STATUS: %s \r\n",
			event.key.row, event.key.col, event.pressed ? "PRESSED" : "RELEASED");
	DBG_N("ATARI KEYMAP[%d, %d] = value %d (hex) 0x%02x\r\n", event.key.col, event.key.row,
			keymaps[0][event.key.col][event.key.row],
			keymaps[0][event.key.col][event.key.row]);

}
