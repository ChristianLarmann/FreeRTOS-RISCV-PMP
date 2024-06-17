/*
 * FreeRTOS Kernel V10.2.1
 * Copyright (C) 2019 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

/******************************************************************************
 * NOTE 1:  This project provides two demo applications.  A simple blinky
 * style project, and a more comprehensive test and demo application.  The
 * mainCREATE_SIMPLE_BLINKY_DEMO_ONLY setting in main.c is used to select
 * between the two.  See the notes on using mainCREATE_SIMPLE_BLINKY_DEMO_ONLY
 * in main.c.  This file implements the simply blinky style version.
 *
 * NOTE 2:  This file only contains the source code that is specific to the
 * basic demo.  Generic functions, such FreeRTOS hook functions, and functions
 * required to configure the hardware are defined in main.c.
 ******************************************************************************
 *
 * main_blinky() creates one queue, and two tasks.  It then starts the
 * scheduler.
 *
 * The Queue Send Task:
 * The queue send task is implemented by the prvQueueSendTask() function in
 * this file.  prvQueueSendTask() sits in a loop that causes it to repeatedly
 * block for 1000 milliseconds, before sending the value 100 to the queue that
 * was created within main_blinky().  Once the value is sent, the task loops
 * back around to block for another 1000 milliseconds...and so on.
 *
 * The Queue Receive Task:
 * The queue receive task is implemented by the prvQueueReceiveTask() function
 * in this file.  prvQueueReceiveTask() sits in a loop where it repeatedly
 * blocks on attempts to read data from the queue that was created within
 * main_blinky().  When data is received, the task checks the value of the
 * data, and if the value equals the expected 100, writes 'Blink' to the UART
 * (the UART is used in place of the LED to allow easy execution in QEMU).  The
 * 'block time' parameter passed to the queue receive function specifies that
 * the task should be held in the Blocked state indefinitely to wait for data to
 * be available on the queue.  The queue receive task will only leave the
 * Blocked state when the queue send task writes to the queue.  As the queue
 * send task writes to the queue every 1000 milliseconds, the queue receive
 * task leaves the Blocked state every 1000 milliseconds, and therefore toggles
 * the LED every 200 milliseconds.
 */

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

/* Priorities used by the tasks. */
#define mainQUEUE_RECEIVE_TASK_PRIORITY (tskIDLE_PRIORITY + 2)
#define mainQUEUE_SEND_TASK_PRIORITY	(tskIDLE_PRIORITY + 1)


/* The maximum number items the queue can hold.  The priority of the receiving
task is above the priority of the sending task, so the receiving task will
preempt the sending task and remove the queue items each time the sending task
writes to the queue.  Therefore the queue will never have more than one item in
it at any time, and even with a queue length of 1, the sending task will never
find the queue full. */
#define mainQUEUE_LENGTH (1)

/*-----------------------------------------------------------*/

/*
 * Called by main when mainCREATE_SIMPLE_BLINKY_DEMO_ONLY is set to 1 in
 * main.c.
 */
void main_blinky(void);


/*-----------------------------------------------------------*/

/* The queue used by both tasks. */
QueueHandle_t xQueue = NULL;


/*-----------------------------------------------------------*/
void main_blinky(void)
{
	/* Create the queue. */
	xQueue = xQueueCreate(mainQUEUE_LENGTH, sizeof(uint32_t));

	if (xQueue != NULL) {
		/* Start the two tasks as described in the comments at the top of this
		file. */
		asm volatile("li x28, 0x10" ::: "x28");

	 	#define recvStackSize configMINIMAL_STACK_SIZE * 8
    	static StackType_t recvTaskStack[ recvStackSize ] ENCLAVE_DATA(QueueReceive);
		TaskParameters_t xQueueReceiveTaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(QueueReceive),
			.pcName			= "RX",
			.usStackDepth	= recvStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) recvTaskStack,
			/* xRegions - Protects the task's program code */
			.xRegions		= {
				/* Base address   		   Length                     Parameters */
				{ TASK_CODE_REGION(QueueReceive) },
			},
			.pmpEncryptionMode = NO_PMP_ENCRYPTION
		};
		xTaskCreateRestricted(&xQueueReceiveTaskParams, NULL);


		asm volatile("li x28, 0x20" ::: "x28");
	 	#define sendStackSize 0x200 * 0x2
    	static StackType_t sendTaskStack[ sendStackSize ] ENCLAVE_DATA(QueueSend);
		TaskParameters_t xQueueSendTaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(QueueSend),
			.pcName			= "TX",
			.usStackDepth	= sendStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) sendTaskStack,
			// .xRegions		= { {0, 0, 0} }
			.xRegions		= {
				/* Base address   		   Length                     Parameters */
				{ TASK_CODE_REGION(QueueSend) },
			}
		};
		xTaskCreateRestricted(&xQueueSendTaskParams, NULL);

     
	 	#define ledStackSize 1024
   		static StackType_t ledTaskStack[ ledStackSize ] ENCLAVE_DATA(Led);
		extern char _start_LedTaskCode;


		TaskParameters_t xLedTaskParams =
		{
			.pvTaskCode		= TASK_FUNCTION_NAME(Led),
			.pcName			= "LED",
			.usStackDepth	= ledStackSize,
			.pvParameters	= NULL,
			.uxPriority		= 1,
			.puxStackBuffer	= (StackType_t*) ledTaskStack,
			.xRegions = {
				/* Base address   		 Length            Parameters */
				{ TASK_CODE_REGION(Led) },
			}
		};

		asm volatile("li x28, 0x30" ::: "x28");
		xTaskCreateRestricted(&xLedTaskParams, NULL);


		/* Start the tasks and timer running. */
		vTaskStartScheduler();
	}

	/* If all is well, the scheduler will now be running, and the following
	line will never be reached.  If the following line does execute, then
	there was insufficient FreeRTOS heap memory available for the Idle and/or
	timer tasks to be created.  See the memory management section on the
	FreeRTOS web site for more details on the FreeRTOS heap
	http://www.freertos.org/a00111.html. */
	for (;;)
		;
}