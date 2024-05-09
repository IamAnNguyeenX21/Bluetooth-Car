/*
 * car.h
 *
 *  Created on: May 7, 2024
 *      Author: an nguyen
 */

#ifndef CAR_CAR_H_
#define CAR_CAR_H_

#include "stm32f1xx_hal.h"
#include "motor.h"

typedef enum
{
	Car_stop,
	Car_Forward,
	Car_Backward,
	Car_Left,
	Car_Right,
}CarState;

void Car_Control(CarState state, uint8_t speed);

void Car_Init();

#endif /* CAR_CAR_H_ */
