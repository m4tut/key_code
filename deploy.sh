#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка
yarn build

# переход в каталог сборки
cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:mtom4tut/key_code.git master:gh-pages

cd -