/*
 * Copyright (C) 2019 ETH Zurich and University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/* Driver to configure PULP timer as periodic interrupt source */
/* Author: Robert Balas (balasr@iis.ee.ethz.ch)
 *         Germain Haugou (germain.haugou@iis.ee.ethz.ch)
 */

#include <stdint.h>
#include <stdbool.h>

#include "pulp_mem_map.h"
#include "io.h"
#include "bits.h"

#include "timer.h"
#include "timer_irq.h"

/* TODO: used to measure elapsed time since last "visit" */
static uint32_t last_count;


#define AHBTIMER_ADDR 				0x20100000
#define AHBTIMER_LOAD_REG_OFFSET	(AHBTIMER_ADDR + 0x0)
#define AHBTIMER_VALUE_REG_OFFSET	(AHBTIMER_ADDR + 0x4)
#define AHBTIMER_CONTROL_REG_OFFSET	(AHBTIMER_ADDR + 0x8)
#define AHBTIMER_CLEAR_REG_OFFSET  	(AHBTIMER_ADDR + 0xC)


int timer_irq_init(uint32_t ticks)
{
	/* Initializing uAHBTIMER */
    /* Set value */
	writew(ticks, (uintptr_t)(AHBTIMER_LOAD_REG_OFFSET));

	/* Configure periodic mode and enable */
	writew(0b0011, (uintptr_t)(AHBTIMER_CONTROL_REG_OFFSET));

	return 0;
}

int timer_irq_set_timeout(uint32_t ticks, bool idle)
{
	(void)idle;
	/* fast reset, value doesn't matter */
	writew(1, (uintptr_t)(PULP_FC_TIMER_ADDR + TIMER_RESET_LO_OFFSET));
	writew(ticks, (uintptr_t)(PULP_FC_TIMER_ADDR + TIMER_CMP_LO_OFFSET));
	return 0;
}

/* TODO: implement */
uint32_t timer_irq_clock_elapsed()
{
	return 0;
}

uint32_t timer_irq_cycle_get_32()
{
	return readw((uintptr_t)(PULP_FC_TIMER_ADDR + TIMER_CNT_LO_OFFSET));
}
