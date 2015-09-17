#!/bin/bash -e

tmpcerts=$(mktemp -d)
trap "rm -rf $tmpcerts" EXIT

openssl req -new -nodes -x509 -subj "/C=US/ST=North Carolina/L=Raleigh/O=IT/CN=moya.trilug.org" -days 3650 -keyout $tmpcerts/server.key -out $tmpcerts/server.crt -extensions v3_ca
cat $tmpcerts/server.key $tmpcerts/server.crt > /etc/ssl/private/server.pem
