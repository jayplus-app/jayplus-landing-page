# Default target to run when just executing `make`
.DEFAULT_GOAL := up

up:
	docker-compose up --build

up-detached:
	docker-compose up -d --build