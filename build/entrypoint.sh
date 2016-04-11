#!/bin/bash
set -e

cd /OpenELEC.tv
rm -rf build.*
rm -rf target/*

git checkout master
if [ -n "$BRANCH" ]; then
  git checkout "$BRANCH"
fi
git pull

if [ -z "$PROJECT" ]; then
  export PROJECT=Generic
fi

if [ -z "$ARCH" ]; then
  export ARCH=x86_64
fi

make image

cp target/*.{tar,gz} /builds

exec "$@"
