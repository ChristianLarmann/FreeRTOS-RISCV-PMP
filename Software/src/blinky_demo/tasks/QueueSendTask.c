#include "user_tasks.h"

/* The rate at which data is sent to the queue.  The 200ms value is converted
to ticks using the pdMS_TO_TICKS() macro. */
#define mainQUEUE_SEND_FREQUENCY_MS pdMS_TO_TICKS(4)
extern QueueHandle_t xQueue;

#define TASK_NAME QueueSend

TASK_FUNCTION_HEADER(TASK_NAME)
{
	TickType_t xNextWakeTime;
	const unsigned long ulValueToSend = 100UL;
	BaseType_t xReturned;

	/* Remove compiler warning about unused parameter. */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();


	for (;;) {
		/* Place this task in the blocked state until it is time to run again. */
		asm volatile("li x29, 0xaaaa" ::: "x29");

		// asm volatile("mv x28, %0" :: "r" (heapVar) : "x28");
		// asm volatile("lw x29, 0(x28)" ::: "x29");

		asm volatile("li x29, 0xbbbb" ::: "x29");

		vTaskDelayUntil(&xNextWakeTime, mainQUEUE_SEND_FREQUENCY_MS);

		/* Send to the queue - causing the queue receive task to unblock and
		toggle the LED.  0 is used as the block time so the sending operation
		will not block - it shouldn't need to block as the queue should always
		be empty at this point in the code. */
		xReturned = xQueueSend(xQueue, &ulValueToSend, 0U);
		configASSERT(xReturned == pdPASS);
	}
}