#!/bin/sh
composer update
php artisan key:generate
php artisan migrate
