#include "user_tasks.h"


void prvTest1Task(void *pvParameters)
{
	TickType_t xNextWakeTime;

	/* Remove compiler warning about unused parameter. */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

	uint32_t counter_free = 0;

	for (;;) {
		vToggleLED();
		vTaskDelayUntil(&xNextWakeTime, pdMS_TO_TICKS(2));
	}
}