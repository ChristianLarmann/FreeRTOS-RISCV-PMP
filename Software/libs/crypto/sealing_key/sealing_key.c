#include "sealing_key.h"


void calculateHashOfTask(void* taskFunctionStart, size_t functionSize, 
                         unsigned char * hash) 
{
  // Hash over task
  sha3_ctx_t hash_ctx;
	sha3_init(&hash_ctx, 64);
  sha3_update(&hash_ctx, taskFunctionStart, functionSize);
  sha3_final(hash, &hash_ctx);
}
