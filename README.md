The content within this repository is my own work produced as a result of completing the course "Embedded Systems STM32 HAL APIs Driver Development", authored by Israel Gbati.

https://www.udemy.com/course/embedded-systems-stm32-hal-apis-driver-development/

For my target device I used the F4 Discovery board, `STM32F429I-DISCO`. Note this has some differences than the nucleo board used in the course, which I will list below since these are traps for young players.

Each folder should be a standalone program that can be compiled with the STM32CubeIDE (all drivers are within each folder). 

## Differences between `F429I-DISCO` and the nucleo board used in the course

**Using Timer 6 instead of `SysTick`** 
- for incrementing the `uwTick` value i.e. in `HAL_Delay()`
- see this in `01-Blinky`... `main.c`

So instead of overriding `SysTick`, we need to override the `HAL_Tim_Period_ElapsedCallback`, which is called by the Timer 6 IRQ (see `HAL_TIM_IRQHandler`).

Instead of this:
```c
// in main.c
void SysTick_Handler(void) {
	HAL_IncTick();
}
```

We use 

```c
// in main.c
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
}
```