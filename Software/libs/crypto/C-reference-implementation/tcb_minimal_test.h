#ifndef TCB_MINIMAL_TEST_H
#define TCB_MINIMAL_TEST_H

#include "crypto_constants.h"
#include "stdint.h"
/*
 * Task control block.  A task control block (TCB) is allocated for each task,
 * and stores task state information, including a pointer to the task's context
 * (the task's run time environment, including register values)
 */
typedef struct tskTaskControlBlock 			/* The old naming convention is used to prevent breaking kernel aware debuggers. */
{
	volatile unsigned long	*pxTopOfStack;	/*< Points to the location of the last item placed on the tasks stack.  THIS MUST BE THE FIRST MEMBER OF THE TCB STRUCT. */


	uint64_t			xStateListItem;	/*< The list that the state list item of a task is reference from denotes the state of that task (Ready, Blocked, Suspended ). */
	// ListItem_t			xEventListItem;		/*< Used to reference a task from an event list. */
	// UBaseType_t			uxPriority;			/*< The priority of the task.  0 is the lowest priority. */
	// StackType_t			*pxStack;			/*< Points to the start of the stack. */
	// char				pcTaskName[ configMAX_TASK_NAME_LEN ];/*< Descriptive name given to the task when created.  Facilitates debugging only. */ /*lint !e971 Unqualified char types are allowed for strings and single characters only. */

    uint64_t		*pxEndOfStack;		/*< Points to the highest valid address for the stack. */

    // UBaseType_t		uxCriticalNesting;	/*< Holds the critical section nesting depth for ports that do not maintain their own count in the port layer. */

    // UBaseType_t		uxTCBNumber;		/*< Stores a number that increments each time a TCB is created.  It allows debuggers to determine when a task has been deleted and then recreated. */
    // UBaseType_t		uxTaskNumber;		/*< Stores a number specifically for use by third party trace code. */

    // UBaseType_t		uxBasePriority;		/*< The priority last assigned to the task - used by the priority inheritance mechanism. */
    // UBaseType_t		uxMutexesHeld;

	// For sealing key (sha3 -> 64 byte)
	unsigned char taskHash[TASK_HASH_LEN];


    /* Allocate a Newlib reent structure that is specific to this task.
    Note Newlib support has been included by popular demand, but is not
    used by the FreeRTOS maintainers themselves.  FreeRTOS is not
    responsible for resulting newlib operation.  User must be familiar with
    newlib and must provide system-wide implementations of the necessary
    stubs. Be warned that (at the time of writing) the current newlib design
    implements a system-wide malloc() that must be provided with locks.

    See the third party link http://www.nadler.com/embedded/newlibAndFreeRTOS.html
    for additional information. */
    // struct	_reent xNewLib_reent;

    // volatile uint32_t ulNotifiedValue;
    // volatile uint8_t ucNotifyState;


    // uint8_t ucDelayAborted;

} tskTCB;


#endif 