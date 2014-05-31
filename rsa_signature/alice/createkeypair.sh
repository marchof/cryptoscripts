#!/bin/sh

openssl genrsa -out work/privatekey.pem 1024
openssl rsa -in work/privatekey.pem -out work/publickey.pem -pubout