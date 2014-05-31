#!/bin/sh

openssl x509 -req -days 365 -CA work/cacert.pem -CAkey work/privatekey.pem \
        -in work/alice.csr -out work/alice.pem -CAserial work/ca.srl \
        -passin pass:secret

openssl x509 -in work/alice.pem -noout -text
