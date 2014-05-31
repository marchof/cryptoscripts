#!/bin/sh

openssl rsautl -encrypt -inkey work/publickey.pem -pubin -in message.txt -out work/message.encrypted