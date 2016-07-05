#!/bin/bash
#set conf
sed -i "s/upstream image.server.com {}/upstream image.server.com {$SERVER_LIST}/g" /etc/nginx/nginx.conf
sed -i "s/_server_/server /g" /etc/nginx/nginx.conf

/usr/sbin/nginx
