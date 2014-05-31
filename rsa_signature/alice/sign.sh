#!/bin/sh

openssl dgst -sha1 -sign work/privatekey.pem -out work/message.signature message.txt 
