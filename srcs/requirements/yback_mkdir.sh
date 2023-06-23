#!/bin/bash

volume_path="/home/yback/data"
wordpress_path="${volume_path}/wordpress"
mariadb_path="${volume_path}/mariadb"


if [ ! -d "${wordpress_path}" ]; then
    mkdir -p "${wordpress_path}"
fi

if [ ! -d "${mariadb_path}" ]; then
    mkdir -p "${mariadb_path}"
fi