#!/bin/sh

echo "REFRESH_TOKEN: $REFRESH_TOKEN"
echo "PORT: $PORT"
echo "USER: $USER"
echo "PASSWORD: $PASSWORD"
echo "ROOT: $ROOT"
/aliyundrive-webdav --refresh-token $REFRESH_TOKEN --port $PORT -W $PASSWORD -U $USER --root $ROOT
