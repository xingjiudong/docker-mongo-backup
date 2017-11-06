#!/bin/bash
set -e

: ${HOST:=127.0.0.1}
: ${DB:=admin}
: ${USERNAME:=siteRootAdmin}
: ${PASSWORD:=password}
: ${AUTHENTICATIONDATABASE:=admin}
: ${OUT:=/data}

mongodump -h ${HOST} -d ${DB} -u ${USERNAME} -p ${PASSWORD} --authenticationDatabase ${AUTHENTICATIONDATABASE} -o  ${OUT} 

source /usr/local/bin/docker-entrypoint.sh
