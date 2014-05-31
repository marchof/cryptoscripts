#!/bin/sh

echo
echo Clear work folders
rm -R ca/work alice/work
mkdir ca/work alice/work

echo
echo The CA creates its root certificate
(cd ca && sh createca.sh)

echo
echo Alice creates a certificate and sends a CSR to the CA
(cd alice && sh createcsr.sh)
cp alice/work/alice.csr ca/work


echo
echo The CA signs the certificate of Alice and sends the certificate back
(cd ca && sh sign.sh)
cp ca/work/alicecert.pem alice/work
