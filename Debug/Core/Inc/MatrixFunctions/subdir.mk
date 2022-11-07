################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/MatrixFunctions/arm_mat_add_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_add_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_add_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_init_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_init_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_init_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_inverse_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_inverse_f64.c \
../Core/Inc/MatrixFunctions/arm_mat_mult_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_mult_fast_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_mult_fast_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_mult_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_mult_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_scale_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_scale_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_scale_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_sub_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_sub_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_sub_q31.c \
../Core/Inc/MatrixFunctions/arm_mat_trans_f32.c \
../Core/Inc/MatrixFunctions/arm_mat_trans_q15.c \
../Core/Inc/MatrixFunctions/arm_mat_trans_q31.c 

OBJS += \
./Core/Inc/MatrixFunctions/arm_mat_add_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_add_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_add_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_init_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_init_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_init_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_inverse_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_inverse_f64.o \
./Core/Inc/MatrixFunctions/arm_mat_mult_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_mult_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_mult_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_scale_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_scale_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_scale_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_sub_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_sub_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_sub_q31.o \
./Core/Inc/MatrixFunctions/arm_mat_trans_f32.o \
./Core/Inc/MatrixFunctions/arm_mat_trans_q15.o \
./Core/Inc/MatrixFunctions/arm_mat_trans_q31.o 

C_DEPS += \
./Core/Inc/MatrixFunctions/arm_mat_add_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_add_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_add_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_init_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_init_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_init_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_inverse_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_inverse_f64.d \
./Core/Inc/MatrixFunctions/arm_mat_mult_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_mult_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_mult_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_scale_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_scale_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_scale_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_sub_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_sub_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_sub_q31.d \
./Core/Inc/MatrixFunctions/arm_mat_trans_f32.d \
./Core/Inc/MatrixFunctions/arm_mat_trans_q15.d \
./Core/Inc/MatrixFunctions/arm_mat_trans_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/MatrixFunctions/%.o Core/Inc/MatrixFunctions/%.su: ../Core/Inc/MatrixFunctions/%.c Core/Inc/MatrixFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -D__FPU_PRESENT -DSTM32F767xx -DARM_MATH_CM7 -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-MatrixFunctions

clean-Core-2f-Inc-2f-MatrixFunctions:
	-$(RM) ./Core/Inc/MatrixFunctions/arm_mat_add_f32.d ./Core/Inc/MatrixFunctions/arm_mat_add_f32.o ./Core/Inc/MatrixFunctions/arm_mat_add_f32.su ./Core/Inc/MatrixFunctions/arm_mat_add_q15.d ./Core/Inc/MatrixFunctions/arm_mat_add_q15.o ./Core/Inc/MatrixFunctions/arm_mat_add_q15.su ./Core/Inc/MatrixFunctions/arm_mat_add_q31.d ./Core/Inc/MatrixFunctions/arm_mat_add_q31.o ./Core/Inc/MatrixFunctions/arm_mat_add_q31.su ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_f32.d ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_f32.o ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_f32.su ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q15.d ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q15.o ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q15.su ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q31.d ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q31.o ./Core/Inc/MatrixFunctions/arm_mat_cmplx_mult_q31.su ./Core/Inc/MatrixFunctions/arm_mat_init_f32.d ./Core/Inc/MatrixFunctions/arm_mat_init_f32.o ./Core/Inc/MatrixFunctions/arm_mat_init_f32.su ./Core/Inc/MatrixFunctions/arm_mat_init_q15.d ./Core/Inc/MatrixFunctions/arm_mat_init_q15.o ./Core/Inc/MatrixFunctions/arm_mat_init_q15.su ./Core/Inc/MatrixFunctions/arm_mat_init_q31.d ./Core/Inc/MatrixFunctions/arm_mat_init_q31.o ./Core/Inc/MatrixFunctions/arm_mat_init_q31.su ./Core/Inc/MatrixFunctions/arm_mat_inverse_f32.d ./Core/Inc/MatrixFunctions/arm_mat_inverse_f32.o ./Core/Inc/MatrixFunctions/arm_mat_inverse_f32.su ./Core/Inc/MatrixFunctions/arm_mat_inverse_f64.d ./Core/Inc/MatrixFunctions/arm_mat_inverse_f64.o ./Core/Inc/MatrixFunctions/arm_mat_inverse_f64.su ./Core/Inc/MatrixFunctions/arm_mat_mult_f32.d ./Core/Inc/MatrixFunctions/arm_mat_mult_f32.o ./Core/Inc/MatrixFunctions/arm_mat_mult_f32.su ./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q15.d ./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q15.o ./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q15.su ./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q31.d ./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q31.o ./Core/Inc/MatrixFunctions/arm_mat_mult_fast_q31.su ./Core/Inc/MatrixFunctions/arm_mat_mult_q15.d ./Core/Inc/MatrixFunctions/arm_mat_mult_q15.o ./Core/Inc/MatrixFunctions/arm_mat_mult_q15.su ./Core/Inc/MatrixFunctions/arm_mat_mult_q31.d ./Core/Inc/MatrixFunctions/arm_mat_mult_q31.o ./Core/Inc/MatrixFunctions/arm_mat_mult_q31.su ./Core/Inc/MatrixFunctions/arm_mat_scale_f32.d ./Core/Inc/MatrixFunctions/arm_mat_scale_f32.o ./Core/Inc/MatrixFunctions/arm_mat_scale_f32.su ./Core/Inc/MatrixFunctions/arm_mat_scale_q15.d ./Core/Inc/MatrixFunctions/arm_mat_scale_q15.o ./Core/Inc/MatrixFunctions/arm_mat_scale_q15.su ./Core/Inc/MatrixFunctions/arm_mat_scale_q31.d ./Core/Inc/MatrixFunctions/arm_mat_scale_q31.o ./Core/Inc/MatrixFunctions/arm_mat_scale_q31.su ./Core/Inc/MatrixFunctions/arm_mat_sub_f32.d ./Core/Inc/MatrixFunctions/arm_mat_sub_f32.o ./Core/Inc/MatrixFunctions/arm_mat_sub_f32.su ./Core/Inc/MatrixFunctions/arm_mat_sub_q15.d ./Core/Inc/MatrixFunctions/arm_mat_sub_q15.o ./Core/Inc/MatrixFunctions/arm_mat_sub_q15.su ./Core/Inc/MatrixFunctions/arm_mat_sub_q31.d ./Core/Inc/MatrixFunctions/arm_mat_sub_q31.o ./Core/Inc/MatrixFunctions/arm_mat_sub_q31.su ./Core/Inc/MatrixFunctions/arm_mat_trans_f32.d ./Core/Inc/MatrixFunctions/arm_mat_trans_f32.o ./Core/Inc/MatrixFunctions/arm_mat_trans_f32.su ./Core/Inc/MatrixFunctions/arm_mat_trans_q15.d ./Core/Inc/MatrixFunctions/arm_mat_trans_q15.o ./Core/Inc/MatrixFunctions/arm_mat_trans_q15.su ./Core/Inc/MatrixFunctions/arm_mat_trans_q31.d ./Core/Inc/MatrixFunctions/arm_mat_trans_q31.o ./Core/Inc/MatrixFunctions/arm_mat_trans_q31.su

.PHONY: clean-Core-2f-Inc-2f-MatrixFunctions

