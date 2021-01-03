#include <errno.h>
#include <sys/unistd.h> // STDOUT_FILENO, STDERR_FILENO
#include "syscall.h"
#include <stm32f4xx_ll_usart.h>
#include "debug.h"

static t_syscall_status uart_initialize = SYSCALL_NOTREADY;
static int debuglevel = DBG_ERROR;

void _write_ready(t_syscall_status rdy)
{
	uart_initialize = rdy;
}

static inline void usart_write_byte(uint8_t c)
{
	/* Wait for TXE flag to be raised */
	while (!LL_USART_IsActiveFlag_TXE(USART1))
		;;

	LL_USART_ClearFlag_TC(USART1);

	LL_USART_TransmitData8(USART1, c);
}

static inline void usart_write_buffer(uint8_t *buff, int len)
{
	int tx;
	for (tx = 0; tx < len; tx++)
		usart_write_byte(*(buff + tx));
}

int _write(int file, char *data, int len)
{
	if ((file != STDOUT_FILENO) && (file != STDERR_FILENO))
	{
		errno = EBADF;
		return -1;
	}

	if (uart_initialize == SYSCALL_READY)
	{
		usart_write_buffer((uint8_t *)data, len);
	}

	return 0;
}

static uint32_t timertick_start_ms = 0;
void timer_start(void)
{
	// When timer starts get the realtime system tick
	timertick_start_ms = HAL_GetTick();
}

// Returns 0 if it is too early otherwise returns 1, i.e. time is elapsed
int timer_elapsed(uint32_t msec)
{
	int retval;
	uint32_t ticks = HAL_GetTick();

	if (ticks < (timertick_start_ms + msec))
		retval = 0;
	else
		retval = 1;

	return retval;
}

// I hate this delay because they are clockspeed dependent!!!
#define delayUS_ASM(us) do {\
	asm volatile (	"MOV R0,%[loops]\n\t"\
			"1: \n\t"\
			"SUB R0, #1\n\t"\
			"CMP R0, #0\n\t"\
			"BNE 1b \n\t" : : [loops] "r" (16*us) : "memory"\
		      );\
} while(0)

void udelay(uint32_t micros)
{
	DBG_N("Enter with: %lu\n", micros);
	if (micros > 0)
	{
		/* Go to number of cycles for system */
		DBG_N("MICROS: %lu\r\n", micros);
		delayUS_ASM(micros);
	}
	DBG_N("Exit\r\n");
}

void mdelay(uint32_t millis)
{
	HAL_Delay(millis);
}
