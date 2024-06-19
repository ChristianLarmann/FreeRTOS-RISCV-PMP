#ifndef USER_TASKS_H
#define USER_TASKS_H

/* Standard includes. */
#include <stdio.h>
#include <string.h>
#include <unistd.h>

/* Kernel includes. */
#include "FreeRTOS.h"
#include "stream_buffer.h"
#include "task.h"
#include "queue.h"
#include "sealing_key.h"
#include "taskMacros.h"
#include "event_groups.h"
#include "timers.h"
#include "sealing_key.h"
#include "user_tasks.h"
#include "mpu_prototypes.h"

/* Tasks */
ADD_ENCLAVE_TASK_SIGNATURE(QueueReceive)
ADD_ENCLAVE_TASK_SIGNATURE(QueueSend)
ADD_ENCLAVE_TASK_SIGNATURE(Led)

#endif