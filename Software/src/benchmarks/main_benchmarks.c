/* Standard includes. */
#include <stdio.h>
#include <string.h>
#include <unistd.h>

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "mpu_prototypes.h"
#include "sealing_key.h"
#include "user_tasks.h"
/*-----------------------------------------------------------*/

#define NUMBER_OF_TASKS 4


/*-----------------------------------------------------------*/
#ifndef NUMBER_OF_TASKS
    #error "NUMBER_OF_TASKS is not defined"
#elif NUMBER_OF_TASKS > 8
    #error "NUMBER_OF_TASKS must not be greater than 8"
#endif
/*-----------------------------------------------------------*/

void main_benchmark(void);

/*-----------------------------------------------------------*/

void main_benchmark(void)
{

		asm volatile("li x28, 0x10" ::: "x28");

		__asm__ __volatile__(
			"li a0, 0x1F100000\n"
			"li a1, 0b111 \n"
			"sw a1, 0(a0) \n"
			::: "a0", "a1"
		);

#if( portUSING_MPU_WRAPPERS == 1 )
	 	#define testTaskStackSize 1000

        #if( NUMBER_OF_TASKS >= 8 )
   		static StackType_t test8TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test8);
		TaskParameters_t xTest8TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test8),
			.pcName			= "Test8",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test8TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test8) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest8TaskParams, NULL);
        #endif

        #if( NUMBER_OF_TASKS >= 7 )
   		static StackType_t test7TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test7);
		TaskParameters_t xTest7TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test7),
			.pcName			= "Test7",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test7TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test7) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest7TaskParams, NULL);
        #endif

        #if( NUMBER_OF_TASKS >= 6 )
   		static StackType_t test6TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test6);
		TaskParameters_t xTest6TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test6),
			.pcName			= "Test6",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test6TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test6) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest6TaskParams, NULL);
        #endif

        #if( NUMBER_OF_TASKS >= 5 )
   		static StackType_t test5TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test5);
		TaskParameters_t xTest5TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test5),
			.pcName			= "Test5",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test5TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test5) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest5TaskParams, NULL);
        #endif

        #if( NUMBER_OF_TASKS >= 4 )
   		static StackType_t test4TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test4);
		TaskParameters_t xTest4TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test4),
			.pcName			= "Test4",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test4TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test4) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest4TaskParams, NULL);
        #endif
     
        #if( NUMBER_OF_TASKS >= 3 )
   		static StackType_t test3TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test3);
		TaskParameters_t xTest3TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test3),
			.pcName			= "Task3",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test3TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test3) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest3TaskParams, NULL);
        #endif


        #if( NUMBER_OF_TASKS >= 2 )
   		static StackType_t test2TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Test2);
		TaskParameters_t xTest2TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Test2),
			.pcName			= "Test2",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test2TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Test2) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xTest2TaskParams, NULL);
        #endif

        #if( BENCHMARK_RUNNING == 1 )
   		static StackType_t test1TaskStack[ testTaskStackSize ] ENCLAVE_DATA(Benchmark1);
		TaskParameters_t xTest1TaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Benchmark1),
			.pcName			= "BenchmarkTask1",
			.usStackDepth	= testTaskStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) test1TaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Benchmark1) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		asm volatile("li x28, 0x30" ::: "x28");
		xTaskCreateRestricted(&xTest1TaskParams, NULL);
        #endif

		__asm__ __volatile__(
			"li a0, 0x1F100000\n"
			"li a1, 0b100 \n"
			"sw a1, 0(a0) \n"
			::: "a0", "a1"
		);

#else
	/* Create tasks */
	#define testStackSize 128
	xTaskCreate(TASK_FUNCTION_NAME(Benchmark1), "Task1", testStackSize, 0, NULL, 1, NULL);
	#if( NUMBER_OF_TASKS >= 2 )
		xTaskCreate(TASK_FUNCTION_NAME(Test2), "Task2", testStackSize, 0, NULL, 1, NULL);
	#endif
	#if( NUMBER_OF_TASKS >= 3 )
		xTaskCreate(TASK_FUNCTION_NAME(Test3), "Task3", testStackSize, 0, NULL, 1, NULL);
	#endif
	#if( NUMBER_OF_TASKS >= 4 )
		xTaskCreate(TASK_FUNCTION_NAME(Test4), "Task4", testStackSize, 0, NULL, 1, NULL);
	#endif
	#if( NUMBER_OF_TASKS >= 5 )
		xTaskCreate(TASK_FUNCTION_NAME(Test5), "Task5", testStackSize, 0, NULL, 1, NULL);
	#endif
	#if( NUMBER_OF_TASKS >= 6 )
		xTaskCreate(TASK_FUNCTION_NAME(Test6), "Task6", testStackSize, 0, NULL, 1, NULL);
	#endif
	#if( NUMBER_OF_TASKS >= 7 )
		xTaskCreate(TASK_FUNCTION_NAME(Test7), "Task7", testStackSize, 0, NULL, 1, NULL);
	#endif
	#if( NUMBER_OF_TASKS >= 8 )
		xTaskCreate(TASK_FUNCTION_NAME(Test8), "Task8", testStackSize, 0, NULL, 1, NULL);
	#endif

#endif // portUSING_MPU_WRAPPERS

		/* Start the tasks and timer running. */
		vTaskStartScheduler();
	// }

	/* If all is well, the scheduler will now be running, and the following
	line will never be reached.  If the following line does execute, then
	there was insufficient FreeRTOS heap memory available for the Idle and/or
	timer tasks to be created.  See the memory management section on the
	FreeRTOS web site for more details on the FreeRTOS heap
	http://www.freertos.org/a00111.html. */
	for (;;)
		;
}