#!/bin/bash
set -e

HOST=${HOST}
DB=${DB}
USERNAME=${USERNAME}
PASSWORD=${PASSWORD}
AUTHENTICATIONDATABASE=${AUTHENTICATIONDATABASE}
OUT=${OUT}

mongodump -h ${HOST} -d ${DB} -u ${USERNAME} -p ${PASSWORD} --authenticationDatabase ${AUTHENTICATIONDATABASE} -o ${OUT} 
source /usr/local/bin/docker-entrypoint.sh
