/*
Copyright 2011,2012 Jun Wako <wakojun@gmail.com>

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

#include <stdint.h>
//#include <avr/interrupt.h>
#include "keycode.h"
#include "host.h"
#include "util.h"
#include "debug.h"


#ifdef NKRO_ENABLE
bool keyboard_nkro = true;
#endif

static host_driver_t *driver;
static uint16_t last_system_report = 0;
static uint16_t last_consumer_report = 0;

static int debuglevel = DBG_INFO;

void host_set_driver(host_driver_t *d)
{
	DBG_N("Called with driver: %p\r\n", d);
    driver = d;
}

host_driver_t *host_get_driver(void)
{
	DBG_N("Returns driver: %p\r\n", driver);
    return driver;
}

uint8_t host_keyboard_leds(void)
{
	DBG_N("Called\r\n");
    if (!driver) return 0;
    return (*driver->keyboard_leds)();
}
/* send report */
void host_keyboard_send(report_keyboard_t *report)
{
	DBG_N("Called with %p -- DRIVER: %p\r\n", report, driver);

    if (debug_keyboard) {
        dprint("keyboard: ");
        for (uint8_t i = 0; i < KEYBOARD_REPORT_SIZE; i++) {
            dprintf("%02X ", report->raw[i]);
        }
        dprint("\n\r");
    }

    if (!driver) return;

    (*driver->send_keyboard)(report);
}

void host_mouse_send(report_mouse_t *report)
{
    if (!driver) return;
    (*driver->send_mouse)(report);
}

void host_system_send(uint16_t report)
{
    if (report == last_system_report) return;
    last_system_report = report;

    if (!driver) return;
    (*driver->send_system)(report);

    if (debug_keyboard) {
        dprintf("system: %04X\n", report);
    }
}

void host_consumer_send(uint16_t report)
{
    if (report == last_consumer_report) return;
    last_consumer_report = report;

    if (!driver) return;
    (*driver->send_consumer)(report);

    if (debug_keyboard) {
        dprintf("consumer: %04X\n", report);
    }
}

uint16_t host_last_system_report(void)
{
    return last_system_report;
}

uint16_t host_last_consumer_report(void)
{
    return last_consumer_report;
}
