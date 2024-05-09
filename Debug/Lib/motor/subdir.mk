################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/motor/motor.c 

OBJS += \
./Lib/motor/motor.o 

C_DEPS += \
./Lib/motor/motor.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/motor/%.o Lib/motor/%.su Lib/motor/%.cyclo: ../Lib/motor/%.c Lib/motor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I/bluetoothcar/Library/Inc -I"D:/Code projects/Stm32/bluetoothcar/Lib/motor" -I"D:/Code projects/Stm32/bluetoothcar/Lib/car" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-motor

clean-Lib-2f-motor:
	-$(RM) ./Lib/motor/motor.cyclo ./Lib/motor/motor.d ./Lib/motor/motor.o ./Lib/motor/motor.su

.PHONY: clean-Lib-2f-motor

