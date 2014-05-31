#!/bin/sh

openssl req -newkey rsa:2048 -keyout work/privatekey.pem -out work/alice.csr \
        -passout pass:secret -config alice.config

openssl req -in work/alice.csr -noout -text

