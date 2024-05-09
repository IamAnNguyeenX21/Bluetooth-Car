################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Library/Src/Car.c \
../Drivers/Library/Src/Motor.c 

OBJS += \
./Drivers/Library/Src/Car.o \
./Drivers/Library/Src/Motor.o 

C_DEPS += \
./Drivers/Library/Src/Car.d \
./Drivers/Library/Src/Motor.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Library/Src/%.o Drivers/Library/Src/%.su Drivers/Library/Src/%.cyclo: ../Drivers/Library/Src/%.c Drivers/Library/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I/bluetoothcar/Drivers/Library/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Library-2f-Src

clean-Drivers-2f-Library-2f-Src:
	-$(RM) ./Drivers/Library/Src/Car.cyclo ./Drivers/Library/Src/Car.d ./Drivers/Library/Src/Car.o ./Drivers/Library/Src/Car.su ./Drivers/Library/Src/Motor.cyclo ./Drivers/Library/Src/Motor.d ./Drivers/Library/Src/Motor.o ./Drivers/Library/Src/Motor.su

.PHONY: clean-Drivers-2f-Library-2f-Src

