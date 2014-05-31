#!/bin/sh

echo
echo Clear work folders
rm -R alice/work bob/work
mkdir alice/work bob/work

echo
echo Alice creates new private/public key pair and provides the public key to Bob
(cd alice && sh createkeypair.sh)
cp alice/work/publickey.pem bob/work

echo
echo Alice signs message.txt and sends the signature along with the message to Bob
cat alice/message.txt
(cd alice && sh sign.sh)
cp alice/message.txt alice/work/message.signature bob/work

echo
echo Bob verifies the message signature with the public key of Alice
cat bob/work/message.txt
(cd bob && sh verify.sh)

echo
echo A modified version of the message will fail to verify
echo "AND MORE\n" >> bob/work/message.txt
cat bob/work/message.txt
(cd bob && sh verify.sh)
