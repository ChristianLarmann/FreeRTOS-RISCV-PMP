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
 *         return (uint32_t)((uintptr_t)&_end_ExampleTask - (uintptr_t)prvExampleTask);
 *     }
 * 
 */
#define ADD_ENCLAVE_TASK_SIG_HELPER(taskName) void prv ## taskName ## Task(void *pvParameters) \
        __attribute__((section("." #taskName "Task"))); \
    static inline uint32_t get ## taskName ## TaskSize(void) \
        __attribute__((section("." #taskName "Task"))); \
    static inline uint32_t get ## taskName ## TaskSize(void) { \
        extern char _end_ ## taskName ## Task; \
        extern char _start_ ## taskName ## Task; \
        return (uint32_t)((uintptr_t)&_end_ ## taskName ## Task - \
        (uintptr_t)&_start_ ## taskName ## Task); }
#define ADD_ENCLAVE_TASK_SIGNATURE(taskName) ADD_ENCLAVE_TASK_SIG_HELPER(taskName)


