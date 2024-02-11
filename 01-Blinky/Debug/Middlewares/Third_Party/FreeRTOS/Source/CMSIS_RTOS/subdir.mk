################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.o Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.su Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.c Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F429I_DISC1 -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DSTM32F429xx -DUSE_HAL_DRIVER -c -I../Inc -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/CMSIS/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/USB_HOST/App" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/USB_HOST/Target" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.d ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS

