#include "api.h"
#include "randombytes1.h"

#include <string.h>

extern void crypto_kem_keypair_jazz(
  uint8_t *public_key,
  uint8_t *secret_key,
  const uint8_t *randomness
);

extern void crypto_kem_enc_jazz(
  uint8_t *ciphertext,
  uint8_t *shared_secret,
  const uint8_t *public_key,
  const uint8_t *randomness
);

extern void crypto_kem_dec_jazz(
  uint8_t *shared_secret,
  const uint8_t *ciphertext,
  const uint8_t *secret_key
);

//

#define KYBER_SYMBYTES 32

int jade_kem_kyber_kyber768_amd64_avx2r_keypair(
  uint8_t *public_key,
  uint8_t *secret_key
)
{
  uint8_t randomness[KYBER_SYMBYTES];
  randombytes(randomness, KYBER_SYMBYTES);
  //memset(randomness,0,KYBER_SYMBYTES); // To debug; Do not delete yet.
  crypto_kem_keypair_jazz(public_key, secret_key, randomness);
  return 0;
}

int jade_kem_kyber_kyber768_amd64_avx2r_enc(
  uint8_t *ciphertext,
  uint8_t *shared_secret,
  const uint8_t *public_key
)
{
  uint8_t randomness[KYBER_SYMBYTES];
  randombytes(randomness, KYBER_SYMBYTES);
  //memset(randomness,0,KYBER_SYMBYTES); // To debug; Do not delete yet.
  crypto_kem_enc_jazz(ciphertext, shared_secret, public_key, randomness);
  return 0;
}

int jade_kem_kyber_kyber768_amd64_avx2r_dec(
  uint8_t *shared_secret,
  const uint8_t *ciphertext,
  const uint8_t *secret_key
)
{
  crypto_kem_dec_jazz(shared_secret, ciphertext, secret_key);
  return 0;
}

