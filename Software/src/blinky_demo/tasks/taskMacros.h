#define TASK_FUNCTION_HEADER_HELPER(taskName) void prv ## taskName ## Task(void *pvParameters)
#define TASK_FUNCTION_HEADER(taskName) TASK_FUNCTION_HEADER_HELPER(taskName)

/*
 * This macro is defining the task's function in a its own memory section. 
 * Additionally, a function that calculates the size of the task function
 * is implemented, which is needed when the task's hash is calculated during
 * the creation of a task.
 * 
 * IMPORTANT: At the end of the task's for(;;) loop in the .c file, the macro 
 * TASK_END_LABEL needs to be put, otherwise the get...Size function below will
 * not find the ending label.
 * 
 * Example:
 * ADD_ENCLAVE_TASK(Example)
 * 
 * expands to:
 * 
 *     void prvExampleTask(void *pvParameters) __attribute__((section(".ExampleTask")));
 *     static inline uint32_t getExampleTaskSize(void) __attribute__((section(".ExampleTask")));
 *     static inline uint32_t getExampleTaskSize(void) {
 *         extern char _end_ExampleTask;
 *         return (uint32_t)((uintptr_t)&_end_ExampleTask - (uintptr_t)_start_ExampleTask);
 *     }
 * 
 */
#define ADD_ENCLAVE_TASK_SIG_HELPER(taskName) void prv ## taskName ## Task(void *pvParameters) \
        __attribute__((section("." #taskName "TaskCode"))); \
    static inline uint32_t get ## taskName ## TaskSize(void) \
        __attribute__((section("." #taskName "TaskCode"))); \
    static inline uint32_t get ## taskName ## TaskSize(void) { \
        extern char _end_ ## taskName ## TaskCode; \
        extern char _start_ ## taskName ## TaskCode; \
        return (uint32_t)((uintptr_t)&_end_ ## taskName ## TaskCode - \
        (uintptr_t)&_start_ ## taskName ## TaskCode); } \
    static inline void* get ## taskName ## TaskBeginning(void) \
        __attribute__((section("." #taskName "TaskCode"))); \
    static inline void* get ## taskName ## TaskBeginning(void) { \
        extern char _start_ ## taskName ## TaskCode; \
        return (void*)&_start_ ## taskName ## TaskCode;}

#define ADD_ENCLAVE_TASK_SIGNATURE(taskName) ADD_ENCLAVE_TASK_SIG_HELPER(taskName)



/* For task initialization */

#define TASK_FUNCTION_NAME(taskName) prv ## taskName ## Task

#define TASK_CODE_REGION(taskName) get ## taskName ##TaskBeginning(), \
                                   get ## taskName ##TaskSize(), \
                                   portPMP_REGION_EXECUTE

/* The stack task does not necessarily need to be put in its own section but there
   is the risk that the linker puts the stack data in the normal data section. This
   is a problem because then the stack's PMP region will overlap with the unprivileged
   data region or the system call region which can lead to unexpected behaviour. */
#define ENCLAVE_DATA(taskName) __attribute__((section("." #taskName "TaskData")))