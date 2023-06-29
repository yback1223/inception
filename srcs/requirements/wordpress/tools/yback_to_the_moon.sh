#!/bin/sh

echo "Move to /var/www !!!"

cd /var/www/

echo "Permission 777 open !!!"

chmod 777 yback_entrypoint.sh

echo "Execute yback_entrypoing.sh !!!"

./yback_entrypoint.sh
