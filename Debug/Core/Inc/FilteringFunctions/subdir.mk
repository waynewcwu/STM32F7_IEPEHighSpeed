################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_f32.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q15.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q31.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f32.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f64.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c \
../Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c \
../Core/Inc/FilteringFunctions/arm_conv_f32.c \
../Core/Inc/FilteringFunctions/arm_conv_fast_opt_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_fast_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_fast_q31.c \
../Core/Inc/FilteringFunctions/arm_conv_opt_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_opt_q7.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_f32.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_fast_opt_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_fast_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_fast_q31.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_opt_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_opt_q7.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_q31.c \
../Core/Inc/FilteringFunctions/arm_conv_partial_q7.c \
../Core/Inc/FilteringFunctions/arm_conv_q15.c \
../Core/Inc/FilteringFunctions/arm_conv_q31.c \
../Core/Inc/FilteringFunctions/arm_conv_q7.c \
../Core/Inc/FilteringFunctions/arm_correlate_f32.c \
../Core/Inc/FilteringFunctions/arm_correlate_fast_opt_q15.c \
../Core/Inc/FilteringFunctions/arm_correlate_fast_q15.c \
../Core/Inc/FilteringFunctions/arm_correlate_fast_q31.c \
../Core/Inc/FilteringFunctions/arm_correlate_opt_q15.c \
../Core/Inc/FilteringFunctions/arm_correlate_opt_q7.c \
../Core/Inc/FilteringFunctions/arm_correlate_q15.c \
../Core/Inc/FilteringFunctions/arm_correlate_q31.c \
../Core/Inc/FilteringFunctions/arm_correlate_q7.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_init_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_init_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_init_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_decimate_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_fast_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_fast_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_init_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_init_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_init_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_init_q7.c \
../Core/Inc/FilteringFunctions/arm_fir_interpolate_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_interpolate_init_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_interpolate_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_interpolate_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_lattice_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_lattice_init_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_lattice_init_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_lattice_init_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_lattice_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_lattice_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_q7.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_init_f32.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_init_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_init_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_init_q7.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_q15.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_q31.c \
../Core/Inc/FilteringFunctions/arm_fir_sparse_q7.c \
../Core/Inc/FilteringFunctions/arm_iir_lattice_f32.c \
../Core/Inc/FilteringFunctions/arm_iir_lattice_init_f32.c \
../Core/Inc/FilteringFunctions/arm_iir_lattice_init_q15.c \
../Core/Inc/FilteringFunctions/arm_iir_lattice_init_q31.c \
../Core/Inc/FilteringFunctions/arm_iir_lattice_q15.c \
../Core/Inc/FilteringFunctions/arm_iir_lattice_q31.c \
../Core/Inc/FilteringFunctions/arm_lms_f32.c \
../Core/Inc/FilteringFunctions/arm_lms_init_f32.c \
../Core/Inc/FilteringFunctions/arm_lms_init_q15.c \
../Core/Inc/FilteringFunctions/arm_lms_init_q31.c \
../Core/Inc/FilteringFunctions/arm_lms_norm_f32.c \
../Core/Inc/FilteringFunctions/arm_lms_norm_init_f32.c \
../Core/Inc/FilteringFunctions/arm_lms_norm_init_q15.c \
../Core/Inc/FilteringFunctions/arm_lms_norm_init_q31.c \
../Core/Inc/FilteringFunctions/arm_lms_norm_q15.c \
../Core/Inc/FilteringFunctions/arm_lms_norm_q31.c \
../Core/Inc/FilteringFunctions/arm_lms_q15.c \
../Core/Inc/FilteringFunctions/arm_lms_q31.c 

OBJS += \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_f32.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q15.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q31.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f32.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f64.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o \
./Core/Inc/FilteringFunctions/arm_conv_f32.o \
./Core/Inc/FilteringFunctions/arm_conv_fast_opt_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_fast_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_fast_q31.o \
./Core/Inc/FilteringFunctions/arm_conv_opt_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_opt_q7.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_f32.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_fast_opt_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q31.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q7.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_q31.o \
./Core/Inc/FilteringFunctions/arm_conv_partial_q7.o \
./Core/Inc/FilteringFunctions/arm_conv_q15.o \
./Core/Inc/FilteringFunctions/arm_conv_q31.o \
./Core/Inc/FilteringFunctions/arm_conv_q7.o \
./Core/Inc/FilteringFunctions/arm_correlate_f32.o \
./Core/Inc/FilteringFunctions/arm_correlate_fast_opt_q15.o \
./Core/Inc/FilteringFunctions/arm_correlate_fast_q15.o \
./Core/Inc/FilteringFunctions/arm_correlate_fast_q31.o \
./Core/Inc/FilteringFunctions/arm_correlate_opt_q15.o \
./Core/Inc/FilteringFunctions/arm_correlate_opt_q7.o \
./Core/Inc/FilteringFunctions/arm_correlate_q15.o \
./Core/Inc/FilteringFunctions/arm_correlate_q31.o \
./Core/Inc/FilteringFunctions/arm_correlate_q7.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_init_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_decimate_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_fast_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_fast_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_init_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_init_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_init_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_init_q7.o \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_lattice_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_lattice_init_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_lattice_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_lattice_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_q7.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_f32.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q7.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_q15.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_q31.o \
./Core/Inc/FilteringFunctions/arm_fir_sparse_q7.o \
./Core/Inc/FilteringFunctions/arm_iir_lattice_f32.o \
./Core/Inc/FilteringFunctions/arm_iir_lattice_init_f32.o \
./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q15.o \
./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q31.o \
./Core/Inc/FilteringFunctions/arm_iir_lattice_q15.o \
./Core/Inc/FilteringFunctions/arm_iir_lattice_q31.o \
./Core/Inc/FilteringFunctions/arm_lms_f32.o \
./Core/Inc/FilteringFunctions/arm_lms_init_f32.o \
./Core/Inc/FilteringFunctions/arm_lms_init_q15.o \
./Core/Inc/FilteringFunctions/arm_lms_init_q31.o \
./Core/Inc/FilteringFunctions/arm_lms_norm_f32.o \
./Core/Inc/FilteringFunctions/arm_lms_norm_init_f32.o \
./Core/Inc/FilteringFunctions/arm_lms_norm_init_q15.o \
./Core/Inc/FilteringFunctions/arm_lms_norm_init_q31.o \
./Core/Inc/FilteringFunctions/arm_lms_norm_q15.o \
./Core/Inc/FilteringFunctions/arm_lms_norm_q31.o \
./Core/Inc/FilteringFunctions/arm_lms_q15.o \
./Core/Inc/FilteringFunctions/arm_lms_q31.o 

C_DEPS += \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_f32.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q15.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q31.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f32.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f64.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d \
./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d \
./Core/Inc/FilteringFunctions/arm_conv_f32.d \
./Core/Inc/FilteringFunctions/arm_conv_fast_opt_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_fast_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_fast_q31.d \
./Core/Inc/FilteringFunctions/arm_conv_opt_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_opt_q7.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_f32.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_fast_opt_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q31.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q7.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_q31.d \
./Core/Inc/FilteringFunctions/arm_conv_partial_q7.d \
./Core/Inc/FilteringFunctions/arm_conv_q15.d \
./Core/Inc/FilteringFunctions/arm_conv_q31.d \
./Core/Inc/FilteringFunctions/arm_conv_q7.d \
./Core/Inc/FilteringFunctions/arm_correlate_f32.d \
./Core/Inc/FilteringFunctions/arm_correlate_fast_opt_q15.d \
./Core/Inc/FilteringFunctions/arm_correlate_fast_q15.d \
./Core/Inc/FilteringFunctions/arm_correlate_fast_q31.d \
./Core/Inc/FilteringFunctions/arm_correlate_opt_q15.d \
./Core/Inc/FilteringFunctions/arm_correlate_opt_q7.d \
./Core/Inc/FilteringFunctions/arm_correlate_q15.d \
./Core/Inc/FilteringFunctions/arm_correlate_q31.d \
./Core/Inc/FilteringFunctions/arm_correlate_q7.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_init_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_decimate_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_fast_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_fast_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_init_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_init_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_init_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_init_q7.d \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_interpolate_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_lattice_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_lattice_init_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_lattice_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_lattice_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_q7.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_f32.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q7.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_q15.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_q31.d \
./Core/Inc/FilteringFunctions/arm_fir_sparse_q7.d \
./Core/Inc/FilteringFunctions/arm_iir_lattice_f32.d \
./Core/Inc/FilteringFunctions/arm_iir_lattice_init_f32.d \
./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q15.d \
./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q31.d \
./Core/Inc/FilteringFunctions/arm_iir_lattice_q15.d \
./Core/Inc/FilteringFunctions/arm_iir_lattice_q31.d \
./Core/Inc/FilteringFunctions/arm_lms_f32.d \
./Core/Inc/FilteringFunctions/arm_lms_init_f32.d \
./Core/Inc/FilteringFunctions/arm_lms_init_q15.d \
./Core/Inc/FilteringFunctions/arm_lms_init_q31.d \
./Core/Inc/FilteringFunctions/arm_lms_norm_f32.d \
./Core/Inc/FilteringFunctions/arm_lms_norm_init_f32.d \
./Core/Inc/FilteringFunctions/arm_lms_norm_init_q15.d \
./Core/Inc/FilteringFunctions/arm_lms_norm_init_q31.d \
./Core/Inc/FilteringFunctions/arm_lms_norm_q15.d \
./Core/Inc/FilteringFunctions/arm_lms_norm_q31.d \
./Core/Inc/FilteringFunctions/arm_lms_q15.d \
./Core/Inc/FilteringFunctions/arm_lms_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/FilteringFunctions/%.o Core/Inc/FilteringFunctions/%.su: ../Core/Inc/FilteringFunctions/%.c Core/Inc/FilteringFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -D__FPU_PRESENT -DSTM32F767xx -DARM_MATH_CM7 -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-FilteringFunctions

clean-Core-2f-Inc-2f-FilteringFunctions:
	-$(RM) ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_f32.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_f32.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_f32.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_f32.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q15.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_init_q31.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q15.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q15.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q15.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q31.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q31.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df1_q31.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f32.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f32.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f32.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f64.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f64.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_f64.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.su ./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d ./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o ./Core/Inc/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.su ./Core/Inc/FilteringFunctions/arm_conv_f32.d ./Core/Inc/FilteringFunctions/arm_conv_f32.o ./Core/Inc/FilteringFunctions/arm_conv_f32.su ./Core/Inc/FilteringFunctions/arm_conv_fast_opt_q15.d ./Core/Inc/FilteringFunctions/arm_conv_fast_opt_q15.o ./Core/Inc/FilteringFunctions/arm_conv_fast_opt_q15.su ./Core/Inc/FilteringFunctions/arm_conv_fast_q15.d ./Core/Inc/FilteringFunctions/arm_conv_fast_q15.o ./Core/Inc/FilteringFunctions/arm_conv_fast_q15.su ./Core/Inc/FilteringFunctions/arm_conv_fast_q31.d ./Core/Inc/FilteringFunctions/arm_conv_fast_q31.o ./Core/Inc/FilteringFunctions/arm_conv_fast_q31.su ./Core/Inc/FilteringFunctions/arm_conv_opt_q15.d ./Core/Inc/FilteringFunctions/arm_conv_opt_q15.o ./Core/Inc/FilteringFunctions/arm_conv_opt_q15.su ./Core/Inc/FilteringFunctions/arm_conv_opt_q7.d ./Core/Inc/FilteringFunctions/arm_conv_opt_q7.o ./Core/Inc/FilteringFunctions/arm_conv_opt_q7.su ./Core/Inc/FilteringFunctions/arm_conv_partial_f32.d ./Core/Inc/FilteringFunctions/arm_conv_partial_f32.o ./Core/Inc/FilteringFunctions/arm_conv_partial_f32.su ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_opt_q15.d ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_opt_q15.o ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_opt_q15.su ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q15.d ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q15.o ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q15.su ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q31.d ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q31.o ./Core/Inc/FilteringFunctions/arm_conv_partial_fast_q31.su ./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q15.d ./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q15.o ./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q15.su ./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q7.d ./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q7.o ./Core/Inc/FilteringFunctions/arm_conv_partial_opt_q7.su ./Core/Inc/FilteringFunctions/arm_conv_partial_q15.d ./Core/Inc/FilteringFunctions/arm_conv_partial_q15.o ./Core/Inc/FilteringFunctions/arm_conv_partial_q15.su ./Core/Inc/FilteringFunctions/arm_conv_partial_q31.d ./Core/Inc/FilteringFunctions/arm_conv_partial_q31.o ./Core/Inc/FilteringFunctions/arm_conv_partial_q31.su ./Core/Inc/FilteringFunctions/arm_conv_partial_q7.d ./Core/Inc/FilteringFunctions/arm_conv_partial_q7.o ./Core/Inc/FilteringFunctions/arm_conv_partial_q7.su ./Core/Inc/FilteringFunctions/arm_conv_q15.d ./Core/Inc/FilteringFunctions/arm_conv_q15.o ./Core/Inc/FilteringFunctions/arm_conv_q15.su ./Core/Inc/FilteringFunctions/arm_conv_q31.d ./Core/Inc/FilteringFunctions/arm_conv_q31.o ./Core/Inc/FilteringFunctions/arm_conv_q31.su ./Core/Inc/FilteringFunctions/arm_conv_q7.d ./Core/Inc/FilteringFunctions/arm_conv_q7.o ./Core/Inc/FilteringFunctions/arm_conv_q7.su ./Core/Inc/FilteringFunctions/arm_correlate_f32.d ./Core/Inc/FilteringFunctions/arm_correlate_f32.o
	-$(RM) ./Core/Inc/FilteringFunctions/arm_correlate_f32.su ./Core/Inc/FilteringFunctions/arm_correlate_fast_opt_q15.d ./Core/Inc/FilteringFunctions/arm_correlate_fast_opt_q15.o ./Core/Inc/FilteringFunctions/arm_correlate_fast_opt_q15.su ./Core/Inc/FilteringFunctions/arm_correlate_fast_q15.d ./Core/Inc/FilteringFunctions/arm_correlate_fast_q15.o ./Core/Inc/FilteringFunctions/arm_correlate_fast_q15.su ./Core/Inc/FilteringFunctions/arm_correlate_fast_q31.d ./Core/Inc/FilteringFunctions/arm_correlate_fast_q31.o ./Core/Inc/FilteringFunctions/arm_correlate_fast_q31.su ./Core/Inc/FilteringFunctions/arm_correlate_opt_q15.d ./Core/Inc/FilteringFunctions/arm_correlate_opt_q15.o ./Core/Inc/FilteringFunctions/arm_correlate_opt_q15.su ./Core/Inc/FilteringFunctions/arm_correlate_opt_q7.d ./Core/Inc/FilteringFunctions/arm_correlate_opt_q7.o ./Core/Inc/FilteringFunctions/arm_correlate_opt_q7.su ./Core/Inc/FilteringFunctions/arm_correlate_q15.d ./Core/Inc/FilteringFunctions/arm_correlate_q15.o ./Core/Inc/FilteringFunctions/arm_correlate_q15.su ./Core/Inc/FilteringFunctions/arm_correlate_q31.d ./Core/Inc/FilteringFunctions/arm_correlate_q31.o ./Core/Inc/FilteringFunctions/arm_correlate_q31.su ./Core/Inc/FilteringFunctions/arm_correlate_q7.d ./Core/Inc/FilteringFunctions/arm_correlate_q7.o ./Core/Inc/FilteringFunctions/arm_correlate_q7.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_f32.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_f32.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_f32.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q15.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q15.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q15.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q31.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q31.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_fast_q31.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_f32.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_f32.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_f32.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q15.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q15.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q15.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q31.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q31.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_init_q31.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_q15.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_q15.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_q15.su ./Core/Inc/FilteringFunctions/arm_fir_decimate_q31.d ./Core/Inc/FilteringFunctions/arm_fir_decimate_q31.o ./Core/Inc/FilteringFunctions/arm_fir_decimate_q31.su ./Core/Inc/FilteringFunctions/arm_fir_f32.d ./Core/Inc/FilteringFunctions/arm_fir_f32.o ./Core/Inc/FilteringFunctions/arm_fir_f32.su ./Core/Inc/FilteringFunctions/arm_fir_fast_q15.d ./Core/Inc/FilteringFunctions/arm_fir_fast_q15.o ./Core/Inc/FilteringFunctions/arm_fir_fast_q15.su ./Core/Inc/FilteringFunctions/arm_fir_fast_q31.d ./Core/Inc/FilteringFunctions/arm_fir_fast_q31.o ./Core/Inc/FilteringFunctions/arm_fir_fast_q31.su ./Core/Inc/FilteringFunctions/arm_fir_init_f32.d ./Core/Inc/FilteringFunctions/arm_fir_init_f32.o ./Core/Inc/FilteringFunctions/arm_fir_init_f32.su ./Core/Inc/FilteringFunctions/arm_fir_init_q15.d ./Core/Inc/FilteringFunctions/arm_fir_init_q15.o ./Core/Inc/FilteringFunctions/arm_fir_init_q15.su ./Core/Inc/FilteringFunctions/arm_fir_init_q31.d ./Core/Inc/FilteringFunctions/arm_fir_init_q31.o ./Core/Inc/FilteringFunctions/arm_fir_init_q31.su ./Core/Inc/FilteringFunctions/arm_fir_init_q7.d ./Core/Inc/FilteringFunctions/arm_fir_init_q7.o ./Core/Inc/FilteringFunctions/arm_fir_init_q7.su ./Core/Inc/FilteringFunctions/arm_fir_interpolate_f32.d ./Core/Inc/FilteringFunctions/arm_fir_interpolate_f32.o ./Core/Inc/FilteringFunctions/arm_fir_interpolate_f32.su ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_f32.d ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_f32.o ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_f32.su ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q15.d ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q15.o ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q15.su ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q31.d ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q31.o ./Core/Inc/FilteringFunctions/arm_fir_interpolate_init_q31.su ./Core/Inc/FilteringFunctions/arm_fir_interpolate_q15.d ./Core/Inc/FilteringFunctions/arm_fir_interpolate_q15.o ./Core/Inc/FilteringFunctions/arm_fir_interpolate_q15.su ./Core/Inc/FilteringFunctions/arm_fir_interpolate_q31.d ./Core/Inc/FilteringFunctions/arm_fir_interpolate_q31.o ./Core/Inc/FilteringFunctions/arm_fir_interpolate_q31.su ./Core/Inc/FilteringFunctions/arm_fir_lattice_f32.d ./Core/Inc/FilteringFunctions/arm_fir_lattice_f32.o ./Core/Inc/FilteringFunctions/arm_fir_lattice_f32.su ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_f32.d ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_f32.o ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_f32.su ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q15.d ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q15.o ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q15.su ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q31.d ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q31.o ./Core/Inc/FilteringFunctions/arm_fir_lattice_init_q31.su ./Core/Inc/FilteringFunctions/arm_fir_lattice_q15.d ./Core/Inc/FilteringFunctions/arm_fir_lattice_q15.o ./Core/Inc/FilteringFunctions/arm_fir_lattice_q15.su ./Core/Inc/FilteringFunctions/arm_fir_lattice_q31.d ./Core/Inc/FilteringFunctions/arm_fir_lattice_q31.o ./Core/Inc/FilteringFunctions/arm_fir_lattice_q31.su ./Core/Inc/FilteringFunctions/arm_fir_q15.d ./Core/Inc/FilteringFunctions/arm_fir_q15.o ./Core/Inc/FilteringFunctions/arm_fir_q15.su ./Core/Inc/FilteringFunctions/arm_fir_q31.d ./Core/Inc/FilteringFunctions/arm_fir_q31.o
	-$(RM) ./Core/Inc/FilteringFunctions/arm_fir_q31.su ./Core/Inc/FilteringFunctions/arm_fir_q7.d ./Core/Inc/FilteringFunctions/arm_fir_q7.o ./Core/Inc/FilteringFunctions/arm_fir_q7.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_f32.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_f32.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_f32.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_f32.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_f32.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_f32.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q15.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q15.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q15.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q31.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q31.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q31.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q7.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q7.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_init_q7.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_q15.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_q15.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_q15.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_q31.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_q31.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_q31.su ./Core/Inc/FilteringFunctions/arm_fir_sparse_q7.d ./Core/Inc/FilteringFunctions/arm_fir_sparse_q7.o ./Core/Inc/FilteringFunctions/arm_fir_sparse_q7.su ./Core/Inc/FilteringFunctions/arm_iir_lattice_f32.d ./Core/Inc/FilteringFunctions/arm_iir_lattice_f32.o ./Core/Inc/FilteringFunctions/arm_iir_lattice_f32.su ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_f32.d ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_f32.o ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_f32.su ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q15.d ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q15.o ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q15.su ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q31.d ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q31.o ./Core/Inc/FilteringFunctions/arm_iir_lattice_init_q31.su ./Core/Inc/FilteringFunctions/arm_iir_lattice_q15.d ./Core/Inc/FilteringFunctions/arm_iir_lattice_q15.o ./Core/Inc/FilteringFunctions/arm_iir_lattice_q15.su ./Core/Inc/FilteringFunctions/arm_iir_lattice_q31.d ./Core/Inc/FilteringFunctions/arm_iir_lattice_q31.o ./Core/Inc/FilteringFunctions/arm_iir_lattice_q31.su ./Core/Inc/FilteringFunctions/arm_lms_f32.d ./Core/Inc/FilteringFunctions/arm_lms_f32.o ./Core/Inc/FilteringFunctions/arm_lms_f32.su ./Core/Inc/FilteringFunctions/arm_lms_init_f32.d ./Core/Inc/FilteringFunctions/arm_lms_init_f32.o ./Core/Inc/FilteringFunctions/arm_lms_init_f32.su ./Core/Inc/FilteringFunctions/arm_lms_init_q15.d ./Core/Inc/FilteringFunctions/arm_lms_init_q15.o ./Core/Inc/FilteringFunctions/arm_lms_init_q15.su ./Core/Inc/FilteringFunctions/arm_lms_init_q31.d ./Core/Inc/FilteringFunctions/arm_lms_init_q31.o ./Core/Inc/FilteringFunctions/arm_lms_init_q31.su ./Core/Inc/FilteringFunctions/arm_lms_norm_f32.d ./Core/Inc/FilteringFunctions/arm_lms_norm_f32.o ./Core/Inc/FilteringFunctions/arm_lms_norm_f32.su ./Core/Inc/FilteringFunctions/arm_lms_norm_init_f32.d ./Core/Inc/FilteringFunctions/arm_lms_norm_init_f32.o ./Core/Inc/FilteringFunctions/arm_lms_norm_init_f32.su ./Core/Inc/FilteringFunctions/arm_lms_norm_init_q15.d ./Core/Inc/FilteringFunctions/arm_lms_norm_init_q15.o ./Core/Inc/FilteringFunctions/arm_lms_norm_init_q15.su ./Core/Inc/FilteringFunctions/arm_lms_norm_init_q31.d ./Core/Inc/FilteringFunctions/arm_lms_norm_init_q31.o ./Core/Inc/FilteringFunctions/arm_lms_norm_init_q31.su ./Core/Inc/FilteringFunctions/arm_lms_norm_q15.d ./Core/Inc/FilteringFunctions/arm_lms_norm_q15.o ./Core/Inc/FilteringFunctions/arm_lms_norm_q15.su ./Core/Inc/FilteringFunctions/arm_lms_norm_q31.d ./Core/Inc/FilteringFunctions/arm_lms_norm_q31.o ./Core/Inc/FilteringFunctions/arm_lms_norm_q31.su ./Core/Inc/FilteringFunctions/arm_lms_q15.d ./Core/Inc/FilteringFunctions/arm_lms_q15.o ./Core/Inc/FilteringFunctions/arm_lms_q15.su ./Core/Inc/FilteringFunctions/arm_lms_q31.d ./Core/Inc/FilteringFunctions/arm_lms_q31.o ./Core/Inc/FilteringFunctions/arm_lms_q31.su

.PHONY: clean-Core-2f-Inc-2f-FilteringFunctions

