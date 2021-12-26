#!/usr/bin/env bash
server=$1
DOMAIN_NAME="ansibleproject.lab"
opensslgen rsa -aes256 -passout pass:gsahdg -out ${server}.${DOMAIN_NAME}.pass.key 4096
openssl rsa -passin pass:gsahdg -in ${server}.${DOMAIN_NAME}.pass.key -out ${server}.${DOMAIN_NAME}.key
rm ${server}.${DOMAIN_NAME}.pass.key
openssl req -nodes -newkey rsa:4096 -keyout ${server}.${DOMAIN_NAME}.key -out ${server}.${DOMAIN_NAME}.csr -subj "/C=BD/ST=BD/L=BD/O=Kube Cluster /OU=DevOps/CN=${server}.${DOMAIN_NAME}"
openssl x509 -req -sha256 -days 365 -in ${server}.${DOMAIN_NAME}.csr -signkey ${server}.${DOMAIN_NAME}.key -out ${server}.${DOMAIN_NAME}.crt

mv ${server}.${DOMAIN_NAME}.crt certs/
mv ${server}.${DOMAIN_NAME}.key certs/
rm -rf ${server}.${DOMAIN_NAME}.csr