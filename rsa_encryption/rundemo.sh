#!/bin/sh

echo
echo Clear work folders
rm -R alice/work bob/work
mkdir alice/work bob/work

echo
echo Bob creates new private/public key pair and sends the public key to Alice
(cd bob && sh createkeypair.sh)
cp bob/work/publickey.pem alice/work

echo
echo Alice encrypts message.txt file with the public key and sends it to Bob
cat alice/message.txt
(cd alice && sh encrypt.sh)
cp alice/work/message.encrypted bob/work

echo
echo Bob decrypts the message with his private key
(cd bob && sh decrypt.sh)
cat bob/work/message.txt

