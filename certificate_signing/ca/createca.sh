#!/bin/sh

openssl req -new -newkey rsa:2048 -x509 -days 3650 \
        -keyout work/privatekey.pem -out work/cacert.pem \
        -config ca.config -passout pass:secret

openssl x509 -in work/cacert.pem -noout -text

echo "00000000" > work/ca.srl