#ifndef AES2_H
#define AES2_H
//#ifdef __cplusplus
//extern "C" {
//#endif

//#ifndef NULL
//#define NULL (void *)0
//#endif


//typedef unsigned char uint8_t;
//typedef unsigned int uint32_t;

#define AES_SUCCESS 0
#define AES_PARM_ERROR 1
#define AES_NOT_INIT_KEY 2
#define AES_BLOCK_SIZE 16

typedef struct
{
	uint32_t nr;		// rounds
	uint32_t *rk;		// round_key
	uint32_t buf[68];	// store round_keys, each block is 4 bytes
} aes_context;

int aes_set_key(aes_context *ctx, const uint8_t *key, uint32_t key_bit);

int aes_encrypt_block(aes_context *ctx, uint8_t cipher_text[16], const uint8_t text[16]);
int aes_decrypt_block(aes_context *ctx, uint8_t text[16], const uint8_t cipher_text[16]);
//#ifdef __cplusplus
//}
//#endif
#endif
