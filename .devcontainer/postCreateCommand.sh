#!/usr/bin/bash

# マイグレーションとシーディングを実行
php artisan migrate --seed

# IDE helper の定義ファイルを生成
php artisan ide-helper:models -N
php artisan ide-helper:eloquent
