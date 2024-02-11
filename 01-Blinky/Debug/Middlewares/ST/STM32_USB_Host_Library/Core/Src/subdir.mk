################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c 

OBJS += \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.o \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.o \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.o \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.d \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.d \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.d \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Host_Library/Core/Src/%.o Middlewares/ST/STM32_USB_Host_Library/Core/Src/%.su Middlewares/ST/STM32_USB_Host_Library/Core/Src/%.cyclo: ../Middlewares/ST/STM32_USB_Host_Library/Core/Src/%.c Middlewares/ST/STM32_USB_Host_Library/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F429I_DISC1 -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DSTM32F429xx -DUSE_HAL_DRIVER -c -I../Inc -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Drivers/CMSIS/Include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/USB_HOST/App" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/USB_HOST/Target" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/Users/s/11_code/222-STM32-HAL-Udemy/01-Blinky/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USB_Host_Library-2f-Core-2f-Src

clean-Middlewares-2f-ST-2f-STM32_USB_Host_Library-2f-Core-2f-Src:
	-$(RM) ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.cyclo ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.d ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.o ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.su ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.cyclo ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.d ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.o ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.su ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.cyclo ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.d ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.o ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.su ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.cyclo ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.d ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.o ./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USB_Host_Library-2f-Core-2f-Src

