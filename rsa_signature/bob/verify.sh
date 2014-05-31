#!/bin/sh

openssl dgst -sha1 -verify work/publickey.pem -signature work/message.signature work/message.txt 
