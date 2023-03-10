#!/bin/sh

if [ "$#" -ne 1 ]
then
    echo "Usage: $0 entrypoint"
    exit 1
fi

case $1 in
    "keypair")
        PARAM="jade_kem_kyber_kyber768_amd64_ref_keypair>public_key,secret_key;"
    ;;
    "encaps")
        PARAM="jade_kem_kyber_kyber768_amd64_ref_enc>ciphertext,shared_secret,public_key;"
    ;;
    "decaps")
        PARAM="jade_kem_kyber_kyber768_amd64_ref_dec>shared_secret,ciphertext,secret_key;"
    ;;
    *)
        echo "Valid entry points: keypair, encaps, decaps"
        exit 1
esac

if [ -z $JASMINC ]
then
    JASMINC=jasminc
    echo "Using jasmin compiler from PATH"
else
    echo "Using jasmin compiler: ${JASMINC}"
fi

FILE="jkem_$1.jazz"

time $JASMINC -checksafety -safetyparam $PARAM $FILE
