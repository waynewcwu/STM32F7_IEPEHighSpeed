################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include Core/Inc/TransformFunctions/subdir.mk
-include Core/Inc/SupportFunctions/subdir.mk
-include Core/Inc/StatisticsFunctions/subdir.mk
-include Core/Inc/MatrixFunctions/subdir.mk
-include Core/Inc/FilteringFunctions/subdir.mk
-include Core/Inc/FastMathFunctions/subdir.mk
-include Core/Inc/ControllerFunctions/subdir.mk
-include Core/Inc/ComplexMathFunctions/subdir.mk
-include Core/Inc/CommonTables/subdir.mk
-include Core/Inc/BasicMathFunctions/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := STM32F7_IEPEHighSpeed_V2q1
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
STM32F7_IEPEHighSpeed_V2q1.elf \

MAP_FILES += \
STM32F7_IEPEHighSpeed_V2q1.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
STM32F7_IEPEHighSpeed_V2q1.list \

OBJCOPY_HEX += \
STM32F7_IEPEHighSpeed_V2q1.hex \


# All Target
all: main-build

# Main-build Target
main-build: STM32F7_IEPEHighSpeed_V2q1.elf secondary-outputs

# Tool invocations
STM32F7_IEPEHighSpeed_V2q1.elf STM32F7_IEPEHighSpeed_V2q1.map: $(OBJS) $(USER_OBJS) C:\Users\USER\STM32CubeIDE\workspace_1.1.0\STM32F7_IEPEHighSpeed_V2q1\STM32F767ZITX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "STM32F7_IEPEHighSpeed_V2q1.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\Users\USER\STM32CubeIDE\workspace_1.1.0\STM32F7_IEPEHighSpeed_V2q1\STM32F767ZITX_FLASH.ld" --specs=nosys.specs -Wl,-Map="STM32F7_IEPEHighSpeed_V2q1.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -u _printf_float -u _scanf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

STM32F7_IEPEHighSpeed_V2q1.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "STM32F7_IEPEHighSpeed_V2q1.list"
	@echo 'Finished building: $@'
	@echo ' '

STM32F7_IEPEHighSpeed_V2q1.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "STM32F7_IEPEHighSpeed_V2q1.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) STM32F7_IEPEHighSpeed_V2q1.elf STM32F7_IEPEHighSpeed_V2q1.hex STM32F7_IEPEHighSpeed_V2q1.list STM32F7_IEPEHighSpeed_V2q1.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
