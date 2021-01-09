#ifndef __WAIT_API_INCLUDED__
#define __WAIT_API_INCLUDED__

#include "syscall.h"

#define wait_ms(ms) mdelay(ms)
#define wait_us(us) udelay(us)
#define _delay_us(us) wait_us(us)
#define _delay_ms(ms) wait_ms(ms)

#endif

