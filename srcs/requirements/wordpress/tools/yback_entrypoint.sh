#!/bin/bash

/var/www/yback_prepare_wp.sh

/var/www/yback_start_wp.sh

php-fpm7.4 --nodaemonize