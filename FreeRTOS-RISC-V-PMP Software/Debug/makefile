################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/assemblyStartup/subdir.mk
-include src/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := FreeRTOS-RISC-V-PMP_Software
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
FreeRTOS-RISC-V-PMP_Software.srec \

SECONDARY_SIZE += \
FreeRTOS-RISC-V-PMP_Software.siz \


# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: FreeRTOS-RISC-V-PMP_Software.elf secondary-outputs

# Tool invocations
FreeRTOS-RISC-V-PMP_Software.elf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C Linker'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -T "/home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/FreeRTOS-RISC-V-PMP Software/refs/link.common.ld" -nostartfiles -L/usr/local/riscv64-unknown-elf/lib/rv32im/ilp32 -Wl,-Map,"FreeRTOS-RISC-V-PMP_Software.map" -Xlinker --print-map -v -o "FreeRTOS-RISC-V-PMP_Software.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

FreeRTOS-RISC-V-PMP_Software.srec: FreeRTOS-RISC-V-PMP_Software.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv64-unknown-elf-objcopy -O srec "FreeRTOS-RISC-V-PMP_Software.elf"  "FreeRTOS-RISC-V-PMP_Software.srec"
	@echo 'Finished building: $@'
	@echo ' '

FreeRTOS-RISC-V-PMP_Software.siz: FreeRTOS-RISC-V-PMP_Software.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv64-unknown-elf-size --format=berkeley "FreeRTOS-RISC-V-PMP_Software.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) FreeRTOS-RISC-V-PMP_Software.elf FreeRTOS-RISC-V-PMP_Software.siz FreeRTOS-RISC-V-PMP_Software.srec
	-@echo ' '

post-build:
	-riscv64-unknown-elf-objdump -d FreeRTOS-RISC-V-PMP_Software.elf > FreeRTOS-RISC-V-PMP_Software.asm; bash srec2dat.sh
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
