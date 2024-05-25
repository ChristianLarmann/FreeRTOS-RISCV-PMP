#include "user_tasks.h"


void prvLedTask(void *pvParameters){

    extern void *MPU_pvPmpMalloc( size_t xSize );
	extern void MPU_pvPmpFree( void *pv );

	TickType_t xNextWakeTime;

	/* Remove compiler warning about unused parameter. */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

	uint32_t* heapVar = (uint32_t*) MPU_pvPmpMalloc(10 * sizeof(uint32_t));
	
	asm volatile("li x28, 0x70" ::: "x28");
	asm volatile("mv x28, %0" :: "r" (heapVar) : "x28");

	// Request sealing key
	char *keyIdentifier = "identifier";
	struct sealing_key newSealingKey;

	xDeriveNewSealingKey(&newSealingKey, keyIdentifier, strlen(keyIdentifier));

	uint32_t counter_free = 0;

	for (;;) {
		/* Place this task in the blocked state until it is time to run again. */
		vTaskDelayUntil(&xNextWakeTime, pdMS_TO_TICKS(2));
		// gpio_pin_toggle( 0x1 );
		asm volatile("li x29, 0x6666" ::: "x29");
		asm volatile("li x29, 0x7777" ::: "x29");


		if (counter_free > 3) {
			uint32_t* heapVar2 = (uint32_t*) MPU_pvPmpMalloc(10 * sizeof(uint32_t));

			if (counter_free == 0) {
				heapVar[0] = 0xAF;
				MPU_pvPmpFree(heapVar);
			}
			if (counter_free == 3) {
				MPU_pvPmpMalloc(6 * sizeof(uint32_t));
				// uint32_t* heapVarLater = (uint32_t*) MPU_pvPmpMalloc(6 * sizeof(uint32_t));
				// heapVarLater[0] = 0xBF;
			}

			if (counter_free == 4) {
				MPU_pvPmpFree(heapVar2);
				heapVar2[0] = 0xCF;
			}
		}
		counter_free += 1;
	}
}