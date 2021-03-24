################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Test_new_new.cpp \
../src/cr_cpp_config.cpp \
../src/cr_startup_lpc8xx.cpp 

C_SRCS += \
../src/crp.c \
../src/mtb.c \
../src/sysinit.c 

OBJS += \
./src/Test_new_new.o \
./src/cr_cpp_config.o \
./src/cr_startup_lpc8xx.o \
./src/crp.o \
./src/mtb.o \
./src/sysinit.o 

CPP_DEPS += \
./src/Test_new_new.d \
./src/cr_cpp_config.d \
./src/cr_startup_lpc8xx.d 

C_DEPS += \
./src/crp.d \
./src/mtb.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -DDEBUG -D__CODE_RED -D__NEWLIB__ -DCORE_M0PLUS -D__MTB_BUFFER_SIZE=256 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC8XX__ -I"C:\Users\krystian.kucharski\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lpc_board_lpc812\inc" -I"C:\Users\krystian.kucharski\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lpc_chip_8xx\inc" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0 -mthumb -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -D__NEWLIB__ -DCORE_M0PLUS -D__MTB_BUFFER_SIZE=256 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC8XX__ -I"C:\Users\krystian.kucharski\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lpc_board_lpc812\inc" -I"C:\Users\krystian.kucharski\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lpc_chip_8xx\inc" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0 -mthumb -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


