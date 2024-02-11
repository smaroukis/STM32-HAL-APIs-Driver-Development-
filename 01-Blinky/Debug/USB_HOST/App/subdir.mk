################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_HOST/App/usb_host.c 

OBJS += \
./USB_HOST/App/usb_host.o 

C_DEPS += \
./USB_HOST/App/usb_host.d 


# Each subdirectory must supply rules for building sources it contributes
USB_HOST/App/%.o USB_HOST/App/%.su USB_HOST/App/%.cyclo: ../USB_HOST/App/%.c USB_HOST/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F429I_DISC1 -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DSTM32F429xx -DUSE_HAL_DRIVER -c -I../Inc -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/CMSIS/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/USB_HOST/App" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/USB_HOST/Target" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USB_HOST-2f-App

clean-USB_HOST-2f-App:
	-$(RM) ./USB_HOST/App/usb_host.cyclo ./USB_HOST/App/usb_host.d ./USB_HOST/App/usb_host.o ./USB_HOST/App/usb_host.su

.PHONY: clean-USB_HOST-2f-App

