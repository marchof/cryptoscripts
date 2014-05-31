#!/bin/sh

openssl verify -CAfile work/cacert.pem work/alice.pem

