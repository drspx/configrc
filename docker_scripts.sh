#!/usr/bin/env zsh

,docker-run-postgres(){
	docker run --rm --name some-postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
}
,docker-run-rabbitmq(){
	docker run --rm --name some-rabbit -p 5672:5672 -p 15672:15672 -d rabbitmq:4-management
}
