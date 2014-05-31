#!/bin/sh

openssl rsautl -decrypt -inkey work/privatekey.pem -in work/message.encrypted -out work/message.txt