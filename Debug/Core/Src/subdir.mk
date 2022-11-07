################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/ADS1256.c \
../Core/Src/BLE_USART.c \
../Core/Src/Calculate_statistic.c \
../Core/Src/Delay.c \
../Core/Src/SampleWave.c \
../Core/Src/arm_fft_bin_data.c \
../Core/Src/freertos.c \
../Core/Src/main.c \
../Core/Src/printf.c \
../Core/Src/stm32f7xx_hal_msp.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c 

OBJS += \
./Core/Src/ADS1256.o \
./Core/Src/BLE_USART.o \
./Core/Src/Calculate_statistic.o \
./Core/Src/Delay.o \
./Core/Src/SampleWave.o \
./Core/Src/arm_fft_bin_data.o \
./Core/Src/freertos.o \
./Core/Src/main.o \
./Core/Src/printf.o \
./Core/Src/stm32f7xx_hal_msp.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o 

C_DEPS += \
./Core/Src/ADS1256.d \
./Core/Src/BLE_USART.d \
./Core/Src/Calculate_statistic.d \
./Core/Src/Delay.d \
./Core/Src/SampleWave.d \
./Core/Src/arm_fft_bin_data.d \
./Core/Src/freertos.d \
./Core/Src/main.d \
./Core/Src/printf.d \
./Core/Src/stm32f7xx_hal_msp.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -D__FPU_PRESENT -DSTM32F767xx -DARM_MATH_CM7 -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/ADS1256.d ./Core/Src/ADS1256.o ./Core/Src/ADS1256.su ./Core/Src/BLE_USART.d ./Core/Src/BLE_USART.o ./Core/Src/BLE_USART.su ./Core/Src/Calculate_statistic.d ./Core/Src/Calculate_statistic.o ./Core/Src/Calculate_statistic.su ./Core/Src/Delay.d ./Core/Src/Delay.o ./Core/Src/Delay.su ./Core/Src/SampleWave.d ./Core/Src/SampleWave.o ./Core/Src/SampleWave.su ./Core/Src/arm_fft_bin_data.d ./Core/Src/arm_fft_bin_data.o ./Core/Src/arm_fft_bin_data.su ./Core/Src/freertos.d ./Core/Src/freertos.o ./Core/Src/freertos.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/printf.d ./Core/Src/printf.o ./Core/Src/printf.su ./Core/Src/stm32f7xx_hal_msp.d ./Core/Src/stm32f7xx_hal_msp.o ./Core/Src/stm32f7xx_hal_msp.su ./Core/Src/stm32f7xx_it.d ./Core/Src/stm32f7xx_it.o ./Core/Src/stm32f7xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f7xx.d ./Core/Src/system_stm32f7xx.o ./Core/Src/system_stm32f7xx.su

.PHONY: clean-Core-2f-Src

