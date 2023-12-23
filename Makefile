SHELL := /bin/bash

# Команды для работы с Go
.PHONY: build-go
build-go:
	go build -o ./.bin/app ./cmd/main.go

.PHONY: run-go
run-go:
	./.bin/app

.PHONY: test-go
test-go:
	go test ./...

# Команды Docker и Docker Compose
.PHONY: build-docker
build-docker:
	docker-compose build

.PHONY: up-docker
up-docker:
	docker-compose up -d

.PHONY: down-docker
down-docker:
	docker-compose down

.PHONY: logs-docker
logs-docker:
	docker-compose logs

# Утилиты
.PHONY: clean
clean:
	go clean
	rm -f ./.bin/app

# Помощь
.PHONY: help
help:
	@echo "Доступные команды:"
	@echo "  build-go       - сборка Go приложения"
	@echo "  run-go         - запуск Go приложения"
	@echo "  test-go        - запуск тестов Go"
	@echo "  build-docker   - сборка Docker образов"
	@echo "  up-docker      - запуск Docker контейнеров"
	@echo "  down-docker    - остановка Docker контейнеров"
	@echo "  logs-docker    - просмотр логов Docker контейнеров"
	@echo "  clean          - очистка сборочных файлов и контейнеров"
	@echo "  help           - показать это сообщение"