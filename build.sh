#!/bin/bash
cd `dirname $0`

npm install yarn -g
yarn
yarn build

tar -cf $APP_NAME-v$VERSION.zip ./dist
