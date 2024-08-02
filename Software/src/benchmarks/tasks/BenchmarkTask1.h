#ifndef BM_TASK_H
#define BM_TASK_H

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
#include "benchmarkMacros.h"

ADD_ENCLAVE_TASK_SIGNATURE(Benchmark1)


#endif /* BM_TASK_H */