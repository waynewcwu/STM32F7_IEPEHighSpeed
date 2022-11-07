################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/CommonTables/arm_common_tables.c \
../Core/Inc/CommonTables/arm_const_structs.c 

OBJS += \
./Core/Inc/CommonTables/arm_common_tables.o \
./Core/Inc/CommonTables/arm_const_structs.o 

C_DEPS += \
./Core/Inc/CommonTables/arm_common_tables.d \
./Core/Inc/CommonTables/arm_const_structs.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/CommonTables/%.o Core/Inc/CommonTables/%.su: ../Core/Inc/CommonTables/%.c Core/Inc/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -D__FPU_PRESENT -DSTM32F767xx -DARM_MATH_CM7 -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-CommonTables

clean-Core-2f-Inc-2f-CommonTables:
	-$(RM) ./Core/Inc/CommonTables/arm_common_tables.d ./Core/Inc/CommonTables/arm_common_tables.o ./Core/Inc/CommonTables/arm_common_tables.su ./Core/Inc/CommonTables/arm_const_structs.d ./Core/Inc/CommonTables/arm_const_structs.o ./Core/Inc/CommonTables/arm_const_structs.su

.PHONY: clean-Core-2f-Inc-2f-CommonTables

