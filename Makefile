# Makefile для проекта Laravel Docker

# Переменные
ifneq (,$(shell command -v docker-compose 2> /dev/null))
	DOCKER_COMPOSE := docker-compose
else
	DOCKER_COMPOSE := docker compose
endif

# Команды
.PHONY: up down build shell install migrate help

help:
	@echo "Доступные команды:"
	@echo "  make up       - Запустить контейнеры в фоновом режиме"
	@echo "  make down     - Остановить и удалить контейнеры"
	@echo "  make build    - Собрать контейнеры"
	@echo "  make shell    - Войти в консоль контейнера приложения"
	@echo "  make install  - Запустить скрипт первоначальной настройки (start.sh)"
	@echo "  make migrate  - Запустить миграции базы данных"
	@echo "  make test     - Запустить тесты"

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

build:
	$(DOCKER_COMPOSE) build

shell:
	$(DOCKER_COMPOSE) exec app bash

install:
	./start.sh

migrate:
	$(DOCKER_COMPOSE) exec app php artisan migrate

test:
	$(DOCKER_COMPOSE) exec app php artisan test
