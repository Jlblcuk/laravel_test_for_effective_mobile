#!/bin/bash
set -e

echo "🚀 Starting Laravel Docker project..."

# 1. Создаём .env из примера, если его нет
if [ ! -f .env ]; then
    cp .env.example .env
    echo "✅ Created .env from .env.example"
fi

# 2. Запускаем контейнеры в фоне
docker-compose up -d

# 3. Ждём готовности MySQL (максимум 15 секунд)
echo "⏳ Waiting for MySQL to be ready..."
timeout=15
counter=0
until docker-compose exec -T db mysql -u laravel -psecret -e "SELECT 1;" > /dev/null 2>&1; do
    counter=$((counter+1))
    if [ $counter -ge $timeout ]; then
        echo "❌ MySQL did not start in time"
        exit 1
    fi
    sleep 1
done
echo "✅ MySQL is ready"

# 4. Устанавливаем зависимости (если vendor/ отсутствует)
if [ ! -d "vendor" ]; then
    echo "📦 Installing Composer dependencies..."
    docker-compose exec -T app composer install --no-interaction --prefer-dist --optimize-autoloader
fi

# 5. Генерируем APP_KEY (если он пустой или отсутствует)
if grep -q "APP_KEY=" .env && [ -z "$(grep "APP_KEY=" .env | cut -d '=' -f2)" ]; then
    echo "🔑 Generating APP_KEY..."
    docker-compose exec -T app php artisan key:generate --ansi
elif ! grep -q "APP_KEY=" .env; then
    echo "🔑 APP_KEY not found in .env — generating..."
    docker-compose exec -T app php artisan key:generate --ansi
else
    echo "✅ APP_KEY already set"
fi

echo "✅ Laravel is ready! Visit http://localhost"