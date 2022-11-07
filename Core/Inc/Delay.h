/*
 * Delay.h
 *
 *  Created on: 2022年7月4日
 *      Author: USER
 */

#ifndef INC_DELAY_H_
#define INC_DELAY_H_



#endif /* INC_DELAY_H_ */

#include "stdint.h"
#include "stm32f7xx_hal.h"
void delay_init(uint8_t SYSCLK);
void delay_ms(uint16_t nms);
void delay_us(uint32_t nus);
void TM_Delay_Init(void);
void TM_DelayMicros(uint32_t micros);
void TM_DelayMillis(uint32_t millis);
