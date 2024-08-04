#!/usr/bin/bash

# .env ファイルがなければ、`.env.local.example` から複製
if [ ! -f .env ]; then
  cp .env.local.example .env
fi

# Docker コンテナを利用して、Composer パッケージをインストール
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs
