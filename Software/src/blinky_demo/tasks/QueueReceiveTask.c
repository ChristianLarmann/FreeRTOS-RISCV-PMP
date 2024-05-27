#include "user_tasks.h"

extern QueueHandle_t xQueue;

#define TASK_NAME QueueReceive

TASK_FUNCTION_HEADER(TASK_NAME)
{
	unsigned long ulReceivedValue;
	const unsigned long ulExpectedValue = 100UL;
	// const char *const pcPassMessage = "Blink\r\n";
	// const char *const pcFailMessage = "Unexpected value received\r\n";
	extern void vSendString(const char *const pcString);
	extern void vToggleLED(void);

	/* Remove compiler warning about unused parameter. */
	(void)pvParameters;

	for (;;) {
		/* Wait until something arrives in the queue - this task will block
		indefinitely provided INCLUDE_vTaskSuspend is set to 1 in
		FreeRTOSConfig.h. */
		xQueueReceive(xQueue, &ulReceivedValue, portMAX_DELAY);

		/*  To get here something must have been received from the queue, but
		is it the expected value?  If it is, toggle the LED. */
		if (ulReceivedValue == ulExpectedValue) {
//			vSendString(pcPassMessage);
			// vToggleLED();
			asm volatile("li x29, 0x2222" ::: "x29");
			asm volatile("li x29, 0x3333" ::: "x29");
			ulReceivedValue = 0U;
		}
	}
}

