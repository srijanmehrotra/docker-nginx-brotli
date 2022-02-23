#/bin/sh
cd /nginx-tests
TEST_NGINX_BINARY=/usr/sbin/nginx-debug TEST_NGINX_MODULES=/etc/nginx/modules TEST_NGINX_LEAVE=1 prove .
