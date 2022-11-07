################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/SupportFunctions/arm_copy_f32.c \
../Core/Inc/SupportFunctions/arm_copy_q15.c \
../Core/Inc/SupportFunctions/arm_copy_q31.c \
../Core/Inc/SupportFunctions/arm_copy_q7.c \
../Core/Inc/SupportFunctions/arm_fill_f32.c \
../Core/Inc/SupportFunctions/arm_fill_q15.c \
../Core/Inc/SupportFunctions/arm_fill_q31.c \
../Core/Inc/SupportFunctions/arm_fill_q7.c \
../Core/Inc/SupportFunctions/arm_float_to_q15.c \
../Core/Inc/SupportFunctions/arm_float_to_q31.c \
../Core/Inc/SupportFunctions/arm_float_to_q7.c \
../Core/Inc/SupportFunctions/arm_q15_to_float.c \
../Core/Inc/SupportFunctions/arm_q15_to_q31.c \
../Core/Inc/SupportFunctions/arm_q15_to_q7.c \
../Core/Inc/SupportFunctions/arm_q31_to_float.c \
../Core/Inc/SupportFunctions/arm_q31_to_q15.c \
../Core/Inc/SupportFunctions/arm_q31_to_q7.c \
../Core/Inc/SupportFunctions/arm_q7_to_float.c \
../Core/Inc/SupportFunctions/arm_q7_to_q15.c \
../Core/Inc/SupportFunctions/arm_q7_to_q31.c 

OBJS += \
./Core/Inc/SupportFunctions/arm_copy_f32.o \
./Core/Inc/SupportFunctions/arm_copy_q15.o \
./Core/Inc/SupportFunctions/arm_copy_q31.o \
./Core/Inc/SupportFunctions/arm_copy_q7.o \
./Core/Inc/SupportFunctions/arm_fill_f32.o \
./Core/Inc/SupportFunctions/arm_fill_q15.o \
./Core/Inc/SupportFunctions/arm_fill_q31.o \
./Core/Inc/SupportFunctions/arm_fill_q7.o \
./Core/Inc/SupportFunctions/arm_float_to_q15.o \
./Core/Inc/SupportFunctions/arm_float_to_q31.o \
./Core/Inc/SupportFunctions/arm_float_to_q7.o \
./Core/Inc/SupportFunctions/arm_q15_to_float.o \
./Core/Inc/SupportFunctions/arm_q15_to_q31.o \
./Core/Inc/SupportFunctions/arm_q15_to_q7.o \
./Core/Inc/SupportFunctions/arm_q31_to_float.o \
./Core/Inc/SupportFunctions/arm_q31_to_q15.o \
./Core/Inc/SupportFunctions/arm_q31_to_q7.o \
./Core/Inc/SupportFunctions/arm_q7_to_float.o \
./Core/Inc/SupportFunctions/arm_q7_to_q15.o \
./Core/Inc/SupportFunctions/arm_q7_to_q31.o 

C_DEPS += \
./Core/Inc/SupportFunctions/arm_copy_f32.d \
./Core/Inc/SupportFunctions/arm_copy_q15.d \
./Core/Inc/SupportFunctions/arm_copy_q31.d \
./Core/Inc/SupportFunctions/arm_copy_q7.d \
./Core/Inc/SupportFunctions/arm_fill_f32.d \
./Core/Inc/SupportFunctions/arm_fill_q15.d \
./Core/Inc/SupportFunctions/arm_fill_q31.d \
./Core/Inc/SupportFunctions/arm_fill_q7.d \
./Core/Inc/SupportFunctions/arm_float_to_q15.d \
./Core/Inc/SupportFunctions/arm_float_to_q31.d \
./Core/Inc/SupportFunctions/arm_float_to_q7.d \
./Core/Inc/SupportFunctions/arm_q15_to_float.d \
./Core/Inc/SupportFunctions/arm_q15_to_q31.d \
./Core/Inc/SupportFunctions/arm_q15_to_q7.d \
./Core/Inc/SupportFunctions/arm_q31_to_float.d \
./Core/Inc/SupportFunctions/arm_q31_to_q15.d \
./Core/Inc/SupportFunctions/arm_q31_to_q7.d \
./Core/Inc/SupportFunctions/arm_q7_to_float.d \
./Core/Inc/SupportFunctions/arm_q7_to_q15.d \
./Core/Inc/SupportFunctions/arm_q7_to_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/SupportFunctions/%.o Core/Inc/SupportFunctions/%.su: ../Core/Inc/SupportFunctions/%.c Core/Inc/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -D__FPU_PRESENT -DSTM32F767xx -DARM_MATH_CM7 -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-SupportFunctions

clean-Core-2f-Inc-2f-SupportFunctions:
	-$(RM) ./Core/Inc/SupportFunctions/arm_copy_f32.d ./Core/Inc/SupportFunctions/arm_copy_f32.o ./Core/Inc/SupportFunctions/arm_copy_f32.su ./Core/Inc/SupportFunctions/arm_copy_q15.d ./Core/Inc/SupportFunctions/arm_copy_q15.o ./Core/Inc/SupportFunctions/arm_copy_q15.su ./Core/Inc/SupportFunctions/arm_copy_q31.d ./Core/Inc/SupportFunctions/arm_copy_q31.o ./Core/Inc/SupportFunctions/arm_copy_q31.su ./Core/Inc/SupportFunctions/arm_copy_q7.d ./Core/Inc/SupportFunctions/arm_copy_q7.o ./Core/Inc/SupportFunctions/arm_copy_q7.su ./Core/Inc/SupportFunctions/arm_fill_f32.d ./Core/Inc/SupportFunctions/arm_fill_f32.o ./Core/Inc/SupportFunctions/arm_fill_f32.su ./Core/Inc/SupportFunctions/arm_fill_q15.d ./Core/Inc/SupportFunctions/arm_fill_q15.o ./Core/Inc/SupportFunctions/arm_fill_q15.su ./Core/Inc/SupportFunctions/arm_fill_q31.d ./Core/Inc/SupportFunctions/arm_fill_q31.o ./Core/Inc/SupportFunctions/arm_fill_q31.su ./Core/Inc/SupportFunctions/arm_fill_q7.d ./Core/Inc/SupportFunctions/arm_fill_q7.o ./Core/Inc/SupportFunctions/arm_fill_q7.su ./Core/Inc/SupportFunctions/arm_float_to_q15.d ./Core/Inc/SupportFunctions/arm_float_to_q15.o ./Core/Inc/SupportFunctions/arm_float_to_q15.su ./Core/Inc/SupportFunctions/arm_float_to_q31.d ./Core/Inc/SupportFunctions/arm_float_to_q31.o ./Core/Inc/SupportFunctions/arm_float_to_q31.su ./Core/Inc/SupportFunctions/arm_float_to_q7.d ./Core/Inc/SupportFunctions/arm_float_to_q7.o ./Core/Inc/SupportFunctions/arm_float_to_q7.su ./Core/Inc/SupportFunctions/arm_q15_to_float.d ./Core/Inc/SupportFunctions/arm_q15_to_float.o ./Core/Inc/SupportFunctions/arm_q15_to_float.su ./Core/Inc/SupportFunctions/arm_q15_to_q31.d ./Core/Inc/SupportFunctions/arm_q15_to_q31.o ./Core/Inc/SupportFunctions/arm_q15_to_q31.su ./Core/Inc/SupportFunctions/arm_q15_to_q7.d ./Core/Inc/SupportFunctions/arm_q15_to_q7.o ./Core/Inc/SupportFunctions/arm_q15_to_q7.su ./Core/Inc/SupportFunctions/arm_q31_to_float.d ./Core/Inc/SupportFunctions/arm_q31_to_float.o ./Core/Inc/SupportFunctions/arm_q31_to_float.su ./Core/Inc/SupportFunctions/arm_q31_to_q15.d ./Core/Inc/SupportFunctions/arm_q31_to_q15.o ./Core/Inc/SupportFunctions/arm_q31_to_q15.su ./Core/Inc/SupportFunctions/arm_q31_to_q7.d ./Core/Inc/SupportFunctions/arm_q31_to_q7.o ./Core/Inc/SupportFunctions/arm_q31_to_q7.su ./Core/Inc/SupportFunctions/arm_q7_to_float.d ./Core/Inc/SupportFunctions/arm_q7_to_float.o ./Core/Inc/SupportFunctions/arm_q7_to_float.su ./Core/Inc/SupportFunctions/arm_q7_to_q15.d ./Core/Inc/SupportFunctions/arm_q7_to_q15.o ./Core/Inc/SupportFunctions/arm_q7_to_q15.su ./Core/Inc/SupportFunctions/arm_q7_to_q31.d ./Core/Inc/SupportFunctions/arm_q7_to_q31.o ./Core/Inc/SupportFunctions/arm_q7_to_q31.su

.PHONY: clean-Core-2f-Inc-2f-SupportFunctions

