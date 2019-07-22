#!/bin/bash
cd `dirname $0`

npm install yarn -g
yarn
yarn build

echo "压缩项目"
tar -cf $APP_NAME-v$VERSION.zip ./dist


