#ifndef USER_TASKS_H
#define USER_TASKS_H

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
#include "taskMacros.h"

/* Tasks */
// ADD_ENCLAVE_T_ASK_SIGNATURE(QueueReceive)
// ADD_ENCLAVE_T_ASK_SIGNATURE(QueueSend)
#if(BENCHMARK_RUNNING != 1)
    ADD_ENCLAVE_TASK_SIGNATURE(Test1)
#else
    ADD_ENCLAVE_TASK_SIGNATURE(Benchmark1)
#endif
ADD_ENCLAVE_TASK_SIGNATURE(Test2)
ADD_ENCLAVE_TASK_SIGNATURE(Test3)
ADD_ENCLAVE_TASK_SIGNATURE(Test4)
ADD_ENCLAVE_TASK_SIGNATURE(Test5)
ADD_ENCLAVE_TASK_SIGNATURE(Test6)
ADD_ENCLAVE_TASK_SIGNATURE(Test7)
ADD_ENCLAVE_TASK_SIGNATURE(Test8)
#endif