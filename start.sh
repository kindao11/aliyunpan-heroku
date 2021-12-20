#!/bin/sh

echo "REFRESH_TOKEN: $REFRESH_TOKEN"
echo "PORT: $PORT"
echo "用户: $USER"
echo "密码: $PASSWORD"
echo "目录: $ROOT"
/aliyundrive-webdav --refresh-token $REFRESH_TOKEN --port $PORT -W $PASSWORD -U $USER --root $ROOT
