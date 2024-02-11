################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/freertos.c \
../Src/main.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_hal_timebase_tim.c \
../Src/stm32f4xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32f4xx.c 

OBJS += \
./Src/freertos.o \
./Src/main.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_hal_timebase_tim.o \
./Src/stm32f4xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32f4xx.o 

C_DEPS += \
./Src/freertos.d \
./Src/main.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_hal_timebase_tim.d \
./Src/stm32f4xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F429I_DISC1 -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DSTM32F429xx -DUSE_HAL_DRIVER -c -I../Inc -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Drivers/CMSIS/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/USB_HOST/App" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/USB_HOST/Target" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/02-UART/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/freertos.cyclo ./Src/freertos.d ./Src/freertos.o ./Src/freertos.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/stm32f4xx_hal_msp.cyclo ./Src/stm32f4xx_hal_msp.d ./Src/stm32f4xx_hal_msp.o ./Src/stm32f4xx_hal_msp.su ./Src/stm32f4xx_hal_timebase_tim.cyclo ./Src/stm32f4xx_hal_timebase_tim.d ./Src/stm32f4xx_hal_timebase_tim.o ./Src/stm32f4xx_hal_timebase_tim.su ./Src/stm32f4xx_it.cyclo ./Src/stm32f4xx_it.d ./Src/stm32f4xx_it.o ./Src/stm32f4xx_it.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su ./Src/system_stm32f4xx.cyclo ./Src/system_stm32f4xx.d ./Src/system_stm32f4xx.o ./Src/system_stm32f4xx.su

.PHONY: clean-Src

