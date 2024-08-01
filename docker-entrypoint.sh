#!/bin/sh

sed -i "s|PORT=8888|PORT=${PORT:-8888}|" .env

python websocket-jambonz-server.py
