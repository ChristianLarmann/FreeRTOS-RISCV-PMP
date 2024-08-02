#include "BenchmarkTask1.h"

void prvBenchmark1Task(void *pvParameters)
{
	TickType_t xNextWakeTime;

	/* Remove compiler warning about unused parameter. */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

    #if( BENCHMARK == BM_TASKSWITCH )


		for (;;) {
			#if( portUSING_MPU_WRAPPERS == 0)
				vToggleLED();
			#endif

			vTaskDelayUntil(&xNextWakeTime, pdMS_TO_TICKS(2));
		}

    #elif( BENCHMARK == BM_MUTEX )

		for (;;) {

			vTaskDelayUntil(&xNextWakeTime, pdMS_TO_TICKS(1000));
		}
    #elif( BENCHMARK == BM_ALLOC )

		for (;;) {

			vTaskDelayUntil(&xNextWakeTime, pdMS_TO_TICKS(1000));
		}
    #else
        #error "No valid benchmark selected"
    #endif
}