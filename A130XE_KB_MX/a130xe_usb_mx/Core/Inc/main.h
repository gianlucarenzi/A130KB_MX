/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#include "stm32f4xx_hal.h"

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* Private defines -----------------------------------------------------------*/
#define K0_Pin GPIO_PIN_4
#define K0_GPIO_Port GPIOE

#define ROW0_Pin GPIO_PIN_5
#define ROW0_GPIO_Port GPIOE
#define ROW1_Pin GPIO_PIN_6
#define ROW1_GPIO_Port GPIOE
#define ROW2_Pin GPIO_PIN_7
#define ROW2_GPIO_Port GPIOE
#define ROW3_Pin GPIO_PIN_8
#define ROW3_GPIO_Port GPIOE
#define ROW4_Pin GPIO_PIN_9
#define ROW4_GPIO_Port GPIOE
#define ROW5_Pin GPIO_PIN_10
#define ROW5_GPIO_Port GPIOE
#define ROW6_Pin GPIO_PIN_11
#define ROW6_GPIO_Port GPIOE
#define ROW7_Pin GPIO_PIN_12
#define ROW7_GPIO_Port GPIOE
#define ROW8_Pin GPIO_PIN_13
#define ROW8_GPIO_Port GPIOE
#define ROW9_Pin GPIO_PIN_14
#define ROW9_GPIO_Port GPIOE
#define ROW10_Pin GPIO_PIN_15
#define ROW10_GPIO_Port GPIOE
#define ROW11_Pin GPIO_PIN_0
#define ROW11_GPIO_Port GPIOD
#define ROW12_Pin GPIO_PIN_1
#define ROW12_GPIO_Port GPIOD

#define COL0_Pin GPIO_PIN_0
#define COL0_GPIO_Port GPIOC
#define COL1_Pin GPIO_PIN_1
#define COL1_GPIO_Port GPIOC
#define COL2_Pin GPIO_PIN_2
#define COL2_GPIO_Port GPIOC
#define COL3_Pin GPIO_PIN_3
#define COL3_GPIO_Port GPIOC
#define COL4_Pin GPIO_PIN_4
#define COL4_GPIO_Port GPIOC
#define COL5_Pin GPIO_PIN_5
#define COL5_GPIO_Port GPIOC
#define COL6_Pin GPIO_PIN_6
#define COL6_GPIO_Port GPIOC
#define COL7_Pin GPIO_PIN_7
#define COL7_GPIO_Port GPIOC
#define COL8_Pin GPIO_PIN_8
#define COL8_GPIO_Port GPIOD
#define COL9_Pin GPIO_PIN_9
#define COL9_GPIO_Port GPIOD
#define COL10_Pin GPIO_PIN_10
#define COL10_GPIO_Port GPIOD
#define COL11_Pin GPIO_PIN_11
#define COL11_GPIO_Port GPIOD
#define COL12_Pin GPIO_PIN_12
#define COL12_GPIO_Port GPIOD
#define COL13_Pin GPIO_PIN_13
#define COL13_GPIO_Port GPIOD
#define COL14_Pin GPIO_PIN_14
#define COL14_GPIO_Port GPIOD
#define COL15_Pin GPIO_PIN_15
#define COL15_GPIO_Port GPIOD

#define LED1_Pin GPIO_PIN_6
#define LED1_GPIO_Port GPIOA

#define DEBUG_TX_Pin GPIO_PIN_9
#define DEBUG_TX_GPIO_Port GPIOA
#define DEBUG_RX_Pin GPIO_PIN_10
#define DEBUG_RX_GPIO_Port GPIOA

#define KB_RST_Pin GPIO_PIN_2
#define KB_RST_GPIO_Port GPIOA
#define KB_CLK_Pin GPIO_PIN_3
#define KB_CLK_GPIO_Port GPIOA
#define KB_DAT_Pin GPIO_PIN_4
#define KB_DAT_GPIO_Port GPIOA

extern void led_toggle(void);
#define LED_OFF()         do { HAL_GPIO_WritePin(LED1_GPIO_Port, LED1_Pin, GPIO_PIN_SET); } while (0)
#define LED_ON()          do { HAL_GPIO_WritePin(LED1_GPIO_Port, LED1_Pin, GPIO_PIN_RESET); } while (0)
#define LED_TGL()         do { led_toggle(); } while (0)

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
