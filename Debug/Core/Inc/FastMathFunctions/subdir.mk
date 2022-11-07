################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/FastMathFunctions/arm_cos_f32.c \
../Core/Inc/FastMathFunctions/arm_cos_q15.c \
../Core/Inc/FastMathFunctions/arm_cos_q31.c \
../Core/Inc/FastMathFunctions/arm_sin_f32.c \
../Core/Inc/FastMathFunctions/arm_sin_q15.c \
../Core/Inc/FastMathFunctions/arm_sin_q31.c \
../Core/Inc/FastMathFunctions/arm_sqrt_q15.c \
../Core/Inc/FastMathFunctions/arm_sqrt_q31.c 

OBJS += \
./Core/Inc/FastMathFunctions/arm_cos_f32.o \
./Core/Inc/FastMathFunctions/arm_cos_q15.o \
./Core/Inc/FastMathFunctions/arm_cos_q31.o \
./Core/Inc/FastMathFunctions/arm_sin_f32.o \
./Core/Inc/FastMathFunctions/arm_sin_q15.o \
./Core/Inc/FastMathFunctions/arm_sin_q31.o \
./Core/Inc/FastMathFunctions/arm_sqrt_q15.o \
./Core/Inc/FastMathFunctions/arm_sqrt_q31.o 

C_DEPS += \
./Core/Inc/FastMathFunctions/arm_cos_f32.d \
./Core/Inc/FastMathFunctions/arm_cos_q15.d \
./Core/Inc/FastMathFunctions/arm_cos_q31.d \
./Core/Inc/FastMathFunctions/arm_sin_f32.d \
./Core/Inc/FastMathFunctions/arm_sin_q15.d \
./Core/Inc/FastMathFunctions/arm_sin_q31.d \
./Core/Inc/FastMathFunctions/arm_sqrt_q15.d \
./Core/Inc/FastMathFunctions/arm_sqrt_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/FastMathFunctions/%.o Core/Inc/FastMathFunctions/%.su: ../Core/Inc/FastMathFunctions/%.c Core/Inc/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -D__FPU_PRESENT -DSTM32F767xx -DARM_MATH_CM7 -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-FastMathFunctions

clean-Core-2f-Inc-2f-FastMathFunctions:
	-$(RM) ./Core/Inc/FastMathFunctions/arm_cos_f32.d ./Core/Inc/FastMathFunctions/arm_cos_f32.o ./Core/Inc/FastMathFunctions/arm_cos_f32.su ./Core/Inc/FastMathFunctions/arm_cos_q15.d ./Core/Inc/FastMathFunctions/arm_cos_q15.o ./Core/Inc/FastMathFunctions/arm_cos_q15.su ./Core/Inc/FastMathFunctions/arm_cos_q31.d ./Core/Inc/FastMathFunctions/arm_cos_q31.o ./Core/Inc/FastMathFunctions/arm_cos_q31.su ./Core/Inc/FastMathFunctions/arm_sin_f32.d ./Core/Inc/FastMathFunctions/arm_sin_f32.o ./Core/Inc/FastMathFunctions/arm_sin_f32.su ./Core/Inc/FastMathFunctions/arm_sin_q15.d ./Core/Inc/FastMathFunctions/arm_sin_q15.o ./Core/Inc/FastMathFunctions/arm_sin_q15.su ./Core/Inc/FastMathFunctions/arm_sin_q31.d ./Core/Inc/FastMathFunctions/arm_sin_q31.o ./Core/Inc/FastMathFunctions/arm_sin_q31.su ./Core/Inc/FastMathFunctions/arm_sqrt_q15.d ./Core/Inc/FastMathFunctions/arm_sqrt_q15.o ./Core/Inc/FastMathFunctions/arm_sqrt_q15.su ./Core/Inc/FastMathFunctions/arm_sqrt_q31.d ./Core/Inc/FastMathFunctions/arm_sqrt_q31.o ./Core/Inc/FastMathFunctions/arm_sqrt_q31.su

.PHONY: clean-Core-2f-Inc-2f-FastMathFunctions

