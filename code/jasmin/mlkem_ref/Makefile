# -*- Makefile -*-

-include ../../Makefile.conf

CKP    := ../../kyber/ref
CC     ?= /usr/bin/gcc
CFLAGS := -Wall -Wextra -g -O3 -fomit-frame-pointer -Wno-implicit-function-declaration
JFLAGS := ${JADDFLAGS}
OS     := $(shell uname -s)

.SECONDARY: jkem.s

default: test speed

test: test/test_kem

speed: test/speed_kem

JINC = kem.jinc params.jinc zetas.jinc verify.jinc reduce.jinc \
       polyvec.jinc poly.jinc indcpa.jinc gen_matrix.jinc mlkem_keccak_ref.jinc #fips202.jinc


SOURCES = $(CKP)/verify.c $(CKP)/randombytes.c $(CKP)/poly.c $(CKP)/polyvec.c \
          $(CKP)/cbd.c $(CKP)/fips202.c $(CKP)/ntt.c $(CKP)/reduce.c \
          $(CKP)/symmetric-shake.c $(CKP)/indcpa.c $(CKP)/kem.c\
          $(JASMIN)/syscall/jasmin_syscall.c


test/test_kem: test/test_kem.c $(JINC) $(SOURCES) jkem.s
	$(CC) $(CFLAGS) -o $@ $(SOURCES) jkem.s $<


test/speed_kem: test/speed_kem.c $(JINC) $(SOURCES) jkem.s
	$(CC) $(CFLAGS) -o $@ $(SOURCES) jkem.s $<

%.s: %.jazz
	$(JASMINC) -o $@ $(JFLAGS) $^ 

gen_matrix.safety:
	$(JASMINC) -timings -slice jade_kem_mlkem_mlkem768_amd64_ref_gen_matrix -checksafety -safetyparam 'jade_kem_mlkem_mlkem768_amd64_ref_gen_matrix>;' gen_matrix.jazz 2>&1 | tee $@

keypair_derand.safety:
	$(JASMINC) -timings -slice jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand -checksafety -safetyparam 'jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand>public_key,secret_key,fixedrand;' jkem.jazz 2>&1 | tee $@

keypair.safety:
	$(JASMINC) -timings -slice jade_kem_mlkem_mlkem768_amd64_ref_keypair -checksafety -safetyparam 'jade_kem_mlkem_mlkem768_amd64_ref_keypair>public_key,secret_key;' jkem.jazz 2>&1 | tee $@

enc_derand.safety:
	$(JASMINC) -timings -slice jade_kem_mlkem_mlkem768_amd64_ref_enc_derand -checksafety -safetyparam 'jade_kem_mlkem_mlkem768_amd64_ref_enc_derand>ciphertext,shared_secret,public_key,fixedrand;' jkem.jazz 2>&1 | tee $@

enc.safety:
	$(JASMINC) -timings -slice jade_kem_mlkem_mlkem768_amd64_ref_enc -checksafety -safetyparam 'jade_kem_mlkem_mlkem768_amd64_ref_enc>ciphertext,shared_secret,public_key;' jkem.jazz 2>&1 | tee $@

dec.safety:
	$(JASMINC) -timings -slice jade_kem_mlkem_mlkem768_amd64_ref_dec -checksafety -safetyparam 'jade_kem_mlkem_mlkem768_amd64_ref_dec>shared_secret,ciphertext,secret_key;' jkem.jazz 2>&1 | tee $@

.PHONY: ct clean

ct:
	$(JASMINCT) --infer jkem.jazz

sct:
	$(JASMINCT) --sct jkem.jazz

clean:
	-rm -f *.s
	-rm -f jkem.o
	-rm -f test/test_kem
	-rm -f test/speed_kem
	$(RM) *.safety
ifeq ($(OS),Darwin)
	-rm -rf test/*.dSYM
endif
