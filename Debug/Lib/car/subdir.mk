################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/car/car.c 

OBJS += \
./Lib/car/car.o 

C_DEPS += \
./Lib/car/car.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/car/%.o Lib/car/%.su Lib/car/%.cyclo: ../Lib/car/%.c Lib/car/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I/bluetoothcar/Library/Inc -I"D:/Code projects/Stm32/bluetoothcar/Lib/motor" -I"D:/Code projects/Stm32/bluetoothcar/Lib/car" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-car

clean-Lib-2f-car:
	-$(RM) ./Lib/car/car.cyclo ./Lib/car/car.d ./Lib/car/car.o ./Lib/car/car.su

.PHONY: clean-Lib-2f-car

