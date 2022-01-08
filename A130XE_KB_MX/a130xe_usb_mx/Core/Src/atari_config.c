#include <stdint.h>
#include "main.h"
#include "keyboard.h"
#include "keycode.h"
#include "config.h"
#include "atari_config.h"
#include "debug.h"
#include "host.h"
#include "host_driver.h"
#include "usbd_hid.h"
#include "usb_device.h"

/* Here we can use USB and a couple of led:
 * the main led (usable for reporting errors
 * the caps lock led (original Atari has not got the led for keycaps)
 */
uint8_t atari_keyboard_leds(void);
void atari_send_keyboard(report_keyboard_t *report);

host_driver_t usbdriver = {
	atari_keyboard_leds,
	atari_send_keyboard,
	NULL, // void (*send_mouse)(report_mouse_t *);
	NULL, // void (*send_system)(uint16_t);
	NULL, // (*send_consumer)(uint16_t);
};

static int debuglevel = DBG_INFO;

/* This keymap should be valid with Atari XL and XE (F1..F4) keys as Atari 1200XL
 *
 * ATARI KEYBOARD --- USB KEYBOARD HID
 *    HELP         =       F6 (in atari800 Help key)
 *    START        =       F4 (in atari800 Start key)
 *    SELECT       =       F3 (in atari800 Select key)
 *    OPTION       =       F2 (in atari800 Option key)
 *    RESET        =       F5 (like atari800 emulator)

 *    BREAK        =       F7 (like atari800 emulator)

 *      F1         =       F1 
 *      F2         =       F8 
 *      F3         =       F9 
 *      F4         =       F10
 *
 */

	/*
	 * This keyboard layout needs a specific layout. It must be done
	 * in Linux with X11, Windows or MacOS specific.
	 * 
	 * 
	 * 
	 * Layer 0: Default Layer           |HELP|START|SELECT|OPTION|RESET|
	 *             ,---------------------------------------------------.
	 *             | F1 | F8 | F9 | F10 | F6 |  F4 |  F3  |  F2  | F5  |
	 *             ,--------------------.------------------------------.
	 *
	 * ,-----------------------------------------------------------.
	 * |Esc|  1|  2|  3|  4|  5|  6|  7|  8|  9|  0| DEL|INS|BS| F7|
	 * |-----------------------------------------------------------|
	 * |Tab  |  Q|  W|  E|  R|  T|  Y|  U|  I|  O|  P| -| =| RETURN|
	 * |-----------------------------------------------------------|
	 * |Contro|  A|  S|  D|  F|  G|  H|  J|  K|  L|  ;|  '|  *|CAPS|
	 * |-----------------------------------------------------------|
	 * |Shift   |  Z|  X|  C|  V|  B|  N|  M|  ,|  .|  /|Shift |Gui|
	 * `-----------------------------------------------------------'
	 *             | Alt|        Space           | Alt|
	 *             `----------------------------------'
	 */

	/*
	 * Layer 1 Shift: 
	 *             ,---------------------------------------------------.
	 *             | F11| F12| SCRLK| CMP |    |    |    |      |      |
	 *             ,----------------------.----------------------------.
	 *
	 *
	 * ,-----------------------------------------------------------.
	 * |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
	 * |-----------------------------------------------------------|
	 * |     |   |   |   |   |   |   |   |   |   |   |  |  |       |
	 * |-----------------------------------------------------------|
	 * |      |   |   |   |   |   |   |   |   |   |   |   |   |    |
	 * |-----------------------------------------------------------|
	 * |        |   |   |   |   |   |   |   |   |   |   |      |   |
	 * `-----------------------------------------------------------'
	 *             |    |                        |    |
	 *             `----------------------------------'
	 */

	/* Layer 2 Control: 
	 * ,--------------------------.     ,------------------------------.
	 * |    |    |       |        |     |    |     |      |      |     |
	 * ,--------------------------.     ,------------------------------.
	 *
	 *
	 * ,-----------------------------------------------------------.
	 * |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
	 * |-----------------------------------------------------------|
	 * |     |   |   |   |   |   |   |   |   |   |   | UP| DN|     |
	 * |-----------------------------------------------------------|
	 * |      |   |   |   |   |   |   |   |   |   |   |RGT|LFT|    |
	 * |-----------------------------------------------------------|
	 * |        |   |   |   |   |   |   |   |   |   |   |      |   |
	 * `-----------------------------------------------------------'
	 *             |    |                        |    |
	 *             `----------------------------------'
	 */


const uint8_t keymaps[][KEYBOARD_ROWS][KEYBOARD_COLUMNS] = {
	[0] = {
		{ KC_7,  KC_NO,   KC_8,  KC_9,    KC_0,    KC_DELETE, KC_INSERT, KC_BSPACE,  KC_F7,    KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_6,  KC_NO,   KC_5,  KC_4,    KC_3,    KC_2,      KC_1,      KC_ESC,     KC_NO,    KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_U,  KC_NO,   KC_I,  KC_O,    KC_P,    KC_MINS,   KC_EQL,    KC_ENT,     KC_NO,    KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_Y,  KC_NO,   KC_T,  KC_R,    KC_E,    KC_W,      KC_Q,      KC_TAB,     KC_NO,    KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_F1, KC_J,    KC_K,  KC_L,    KC_SCLN, KC_PPLS,   KC_PAST,   KC_F2,      KC_LCTRL, KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_NO, KC_H,    KC_G,  KC_F,    KC_D,    KC_S,      KC_A,      KC_CAPS,    KC_NO,    KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_N,  KC_SPC,  KC_M,  KC_COMM, KC_DOT,  KC_SLSH,   KC_RGUI,   KC_NO,      KC_NO,    KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_F3, KC_F6,   KC_B,  KC_V,    KC_C,    KC_X,      KC_Z,      KC_F4,      KC_LSFT,  KC_NO,  KC_NO,  KC_NO,  KC_NO },
		{ KC_NO, KC_NO,   KC_NO, KC_NO,   KC_NO,   KC_NO,     KC_NO,     KC_NO,      KC_NO,    KC_F8,  KC_F9,  KC_F10, KC_F5 },
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

static uint8_t leds = 0;

uint8_t atari_keyboard_leds(void)
{
	return leds;
}

uint8_t keymap_key_to_keycode(uint8_t layer, keypos_t key)
{
	return keymaps[(layer)][key.col][key.row];
}

action_t keymap_fn_to_action(uint8_t keycode)
{
    return (action_t) fn_actions[FN_INDEX(keycode)];
}

/* From Middlewares Initialization Stuff... */
extern USBD_HandleTypeDef hUsbDeviceFS;

void atari_send_keyboard(report_keyboard_t *report)
{
	int i;
	unsigned char * ptr = (unsigned char *) report;
	if (debuglevel >= DBG_VERBOSE)
	{
		printf(ANSI_GREEN "ATARI USB REPORT: ");
		for (i = 0; i < sizeof(report_keyboard_t); i++)
		{
			printf("[" ANSI_RED "0x%02x" ANSI_RESET "] ", *(ptr+i));
		}
		printf(ANSI_RESET "\r\n");
	}
	USBD_HID_SendReport(&hUsbDeviceFS, (unsigned char *) report, 8 ); // buffer size
}

void USBD_HID_GetReport(uint8_t * report, int len)
{
	// see from http://www.microchip.com/forums/m433757.aspx
	// report[0] is the report id
	// report[1] is the led bit filed
	// D0: NUM lock
	// D1: CAPS lock
	// D2: SCROLL lock
	// D3: Compose
	// D4: Kana
	const char * LED[5] = {"NUM lock", "CAPS lock", "SCROLL lock", "Compose", "Kana", };

	int i;
	unsigned char * ptr = (unsigned char *) report;
	if (debuglevel >= DBG_VERBOSE)
	{
		printf(ANSI_GREEN "USB GET REPORT (LED): ");
		for (i = 0; i < len; i++)
		{
			printf(ANSI_GREEN "[" ANSI_RED "0x%02x" ANSI_RESET "] ", *(ptr+i));
		}
		// Scan each led and PRINTOUT Which LED Has to be Light or Not
		uint8_t led = *(ptr);
		for (i = 0; i < 5; i++)
		{
			uint8_t idx;
			idx = led & (1 << i);
			if (idx)
			{
				printf(ANSI_YELLOW "%s " ANSI_RESET, LED[idx-1]);
			}
		}
		printf(ANSI_RESET "\r\n");
	}
	leds = *(report);
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

void hook_keyboard_leds_change(uint8_t led_status)
{
	DBG_N("Called: %d\r\n", led_status);

	/* ATARI KEYBOARD HAS 6 LEDS:
	 * Power Supply LED (Hardwired to 5V)
	 * D0: NUM lock
	 * D1: CAPS lock
	 * D2: SCROLL lock
	 * D3: Compose
	 * D4: Kana
	 */

	if (led_status & (1 << 0))
		LED_NUM_LOCK_ON();
	else
		LED_NUM_LOCK_OFF();

	if (led_status & (1 << 1))
		LED_CAPS_LOCK_ON();
	else
		LED_CAPS_LOCK_OFF();

	if (led_status & (1 << 2))
		LED_SCROLL_LOCK_ON();
	else
		LED_SCROLL_LOCK_OFF();

	if (led_status & (1 << 3))
		LED_COMPOSE_ON();
	else
		LED_COMPOSE_OFF();

	if (led_status & (1 << 4))
		LED_KANA_ON();
	else
		LED_KANA_OFF();
}
