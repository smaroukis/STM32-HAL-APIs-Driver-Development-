/**
Notes:
SystemCoreClock is defined in system_stm32f4xx.c
SysTick_Handler is defined in FreeRTOSConfig.h but we comment it out to override it here
Main.h includes stm32f4xx_hal.h and defines some pin symbols
q/answered: Who sets up SysTick to fire every 1ms? It is in HAL_Init, call to HAL_InitTick

 ******************************************************************************
 */

#include "main.h"
#include <stdint.h>
#include "cmsis_os.h"
#include "usb_host.h"

#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif


// Private Function Prototypes
void SystemClock_Config(void);
static void GPIO_Init(void);
static void USART1_UART_Init(void);

// Private Variables
DMA2D_HandleTypeDef hdma2d; // maybe this should be extern if defined elsewhere?


int main(void)
{
	// HAL is initialized first typically
	HAL_Init(); // check result
	// HAL_SYSTICK_Config(SystemCoreClock / 1000); // already called in HAL_Init
	// also calls the HAL_SysTick_Config function when configures the SysTick registers, priority, clock source, enables the interrupt and starts the counter
	// HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK); // didn't see this called in the boilerplate
	// HAL_SYSTICK_EnableIRQ(); // undefined reference
	// HAL_NVIC_EnableIRQ(SysTick_IRQn); // SysTick is enabled via CMSIS SysTick_Config()

	SystemClock_Config();
	// From system_stm32f4xx.c, call SystemCoreClockUpdate() to update the SystemCoreClock variable
	// SystemCoreClockUpdate();

	// Reconfigure the SysTick interrupt priority to be safe
	// HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);

	/* Initialize all configured peripherals */
	GPIO_Init();
	USART1_UART_Init();

    /* Loop forever */
	while(1) {
		HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_13);
		// TODO - need to figure out how to configure timer, LED blinks with bp
		HAL_Delay(500);
		// Note timer 6 is used based on the HAL Init Tick function
		// Make sure it is configured correctly
	}
}

// This target uses Timer 6 to increment uwTick, see TIM6_DAC_IRQHandler in the interrupt file
//void SysTick_Handler(void) {
//	HAL_IncTick();
//}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

void SystemClock_Config(void)
{
	RCC_OscInitTypeDef RCC_OscInitStruct;
	RCC_ClkInitTypeDef RCC_ClkInitStruct;

	/* Configure the main PLL */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
	RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
	RCC_OscInitStruct.PLL.PLLM = 8;
	RCC_OscInitStruct.PLL.PLLN = 100;
	RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
	RCC_OscInitStruct.PLL.PLLQ = 4;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
	{
		Error_Handler();
	}

	/* Configure the CPU, AHB, and APB clocks */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
	{
		Error_Handler();
	}


}


void SystemClock_ConfigExternal(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 72;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 3;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

void GPIO_Init(void) {
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	__HAL_RCC_GPIOG_CLK_ENABLE();

	  /*Configure GPIO pins :*/
	  GPIO_InitStruct.Pin = GPIO_PIN_13;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	  HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);

}

void USART1_UART_Init(void) {
	// TODO
}

void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

