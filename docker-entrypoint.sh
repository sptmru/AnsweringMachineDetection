#!/bin/sh

sed -i "s|PORT=8888|PORT=${PORT:-8888}|" .env
sed -i "s|LOG_LEVEL=INFO|LOG_LEVEL=${LOG_LEVEL:-INFO}|" .env

python websocket-jambonz-server.py
