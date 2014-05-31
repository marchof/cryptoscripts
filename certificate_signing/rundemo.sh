#!/bin/sh

echo
echo Clear work folders
rm -R ca/work alice/work bob/work
mkdir ca/work alice/work bob/work

echo
echo The CA creates its root certificate and makes it available to Bob
(cd ca && sh createca.sh)
cp ca/work/cacert.pem bob/work

echo
echo Alice creates a certificate and sends a CSR to the CA
(cd alice && sh createcsr.sh)
cp alice/work/alice.csr ca/work

echo
echo The CA signs the certificate of Alice and sends the certificate back
(cd ca && sh sign.sh)
cp ca/work/alice.pem alice/work

echo
echo Bob can now verify Alice certificate using the CA certificate
cp alice/work/alice.pem bob/work
(cd bob && sh verify.sh)
