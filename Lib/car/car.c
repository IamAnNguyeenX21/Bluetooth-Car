/*
 * car.c
 *
 *  Created on: May 7, 2024
 *      Author: an nguyen
 */

#include "car.h"

static Motor_TypeDef Left_Motor;
static Motor_TypeDef Right_Motor;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;

void Car_Control(CarState state, uint8_t speed)
{
	Left_Motor.speed = speed;
	Right_Motor.speed = speed;
 switch (state)
 {
 case Car_stop:

	Left_Motor.state = Motor_Stop;
	Right_Motor.state = Motor_Stop;
	Motor_Control(&Left_Motor);
	Motor_Control(&Right_Motor);
	break;
 case Car_Forward:

		Left_Motor.state = Motor_CW;
		Right_Motor.state = Motor_CW;
		Motor_Control(&Left_Motor);
		Motor_Control(&Right_Motor);
		break;
 case Car_Backward:

		Left_Motor.state = Motor_CCW;
		Right_Motor.state = Motor_CCW;
		Motor_Control(&Left_Motor);
		Motor_Control(&Right_Motor);
		break;
 case Car_Left:

		Left_Motor.state = Motor_Stop;
		Right_Motor.state = Motor_CW;
		Motor_Control(&Left_Motor);
		Motor_Control(&Right_Motor);
		break;
 case Car_Right:

		Left_Motor.state = Motor_CW;
		Right_Motor.state = Motor_Stop;
		Motor_Control(&Left_Motor);
		Motor_Control(&Right_Motor);
		break;
 }

}
void Car_Init()
{
	Motor_Init(&Left_Motor, &htim1, TIM_CHANNEL_1, GPIO_PIN_14, GPIOB);
	Motor_Init(&Right_Motor, &htim1, TIM_CHANNEL_2,GPIO_PIN_15, GPIOB);

}
