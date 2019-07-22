#!/bin/bash
cd `dirname $0`
echo "检查yarn"
yarn -v &> /dev/null

if [[ ! $? -eq 0 ]]
then
    echo "安装yarn"
    npm i -g yarn
fi

echo "build project"
yarn --frozen-lockfile && yarn build

echo "压缩项目"
cd dist
tar -czf ../$APP_NAME-v$VERSION.tar.gz .
cd ..
