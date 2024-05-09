/*
 * motor.h
 *
 *  Created on: May 7, 2024
 *      Author: an nguyen
 */

#ifndef MOTOR_MOTOR_H_
#define MOTOR_MOTOR_H_

#include "stm32f1xx_hal.h"

typedef enum
{
	Motor_Stop,
	Motor_CW,
	Motor_CCW,
}Motor_State;

typedef struct
{
	TIM_HandleTypeDef *timer;
	uint16_t channel;
	Motor_State state;
	uint8_t speed;
	GPIO_TypeDef *port;
	uint16_t pin;

}Motor_TypeDef;

void Motor_Control (Motor_TypeDef *motor);
void Motor_Init (Motor_TypeDef *motor,TIM_HandleTypeDef *htim, uint16_t channel,uint16_t motor_pin, GPIO_TypeDef *motor_port);

#endif /* MOTOR_MOTOR_H_ */
