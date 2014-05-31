#!/bin/sh

openssl genrsa -out work/privatekey.pem 2048
openssl rsa -in work/privatekey.pem -out work/publickey.pem -pubout