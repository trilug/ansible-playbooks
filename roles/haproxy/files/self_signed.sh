#!/bin/bash
openssl req -new -nodes -x509 -subj "/C=US/ST=North Carolina/L=Raleigh/O=IT/CN=moya.trilug.org" -days 3650 -keyout /tmp/server.key -out /tmp/server.crt -extensions v3_ca
cat /tmp/server.key /tmp/server.crt > /etc/ssl/private/server.pem
