################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/board.c \
../src/board_sysinit.c \
../src/mtb.c 

OBJS += \
./src/board.o \
./src/board_sysinit.o \
./src/mtb.o 

C_DEPS += \
./src/board.d \
./src/board_sysinit.d \
./src/mtb.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_LPCOPEN -DCORE_M0PLUS -I"C:\Users\krystian.kucharski\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lpc_chip_8xx\inc" -I"C:\Users\krystian.kucharski\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lpc_board_lpc812\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0 -mthumb -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


