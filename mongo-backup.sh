#!/bin/bash
set -e

HOST=$1
DB=$2
USERNAME=$3
PASSWORD=$4
OUT=$5

mkdir -p /usr/local/mongo-backup

docker run --rm \
-v /:/usr/local/mongo-backup \
-e HOST=${HOST:-127.0.0.1} \
-e DB=${DB:-admin} \
-e USERNAME=${USERNAME:-siteRootAdmin} \
-e PASSWORD=${PASSWORD:-password} \
-e OUT=${OUT:-/} 
mongo:latest

