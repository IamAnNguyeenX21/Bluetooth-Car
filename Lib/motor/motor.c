/*
 * motor.c
 *
 *  Created on: May 7, 2024
 *      Author: an nguyen
 */

#include "motor.h"

void Motor_Control (Motor_TypeDef *motor)
{
	uint16_t ccr = (uint16_t)motor->speed*999/10;
	switch (motor->state)
	{
	case Motor_Stop:
		{
			HAL_GPIO_WritePin(motor->port, motor->pin, RESET);
			if (motor->channel == TIM_CHANNEL_1)
				{
					motor->timer->Instance->CCR1 = 0;
				}
			if (motor->channel == TIM_CHANNEL_2)
				{
					motor->timer->Instance->CCR2 = 0;
				}
			break;
		}
	case Motor_CW:
		{
			HAL_GPIO_WritePin(motor->port, motor->pin, SET);
			if (motor->channel == TIM_CHANNEL_1)
				{
					motor->timer->Instance->CCR1 = ccr;
				}
			if (motor->channel == TIM_CHANNEL_2)
				{
					motor->timer->Instance->CCR2 = ccr;
				}
			HAL_TIM_PWM_Start(motor->timer, motor->channel);
			break;

		}
	case Motor_CCW:
		{
			HAL_GPIO_WritePin(motor->port, motor->pin, RESET);
			if (motor->channel == TIM_CHANNEL_1)
				{
					motor->timer->Instance->CCR1 = 999-ccr;
				}
			if (motor->channel == TIM_CHANNEL_2)
				{
					motor->timer->Instance->CCR2 = 999-ccr;
				}
			HAL_TIM_PWM_Start(motor->timer, motor->channel);
			break;
		}

	}
}


void Motor_Init (Motor_TypeDef *motor,TIM_HandleTypeDef *htim, uint16_t channel,uint16_t motor_pin, GPIO_TypeDef *motor_port)
{
	motor->timer = htim;
	motor->channel = channel;
	motor->port = motor_port;
	motor->pin = motor_pin;
}
