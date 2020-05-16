docker-up: 
	docker-compose --project-name elasticsearch_v7 up -d --remove-orphans
.PHONY: docker-up

docker-down:
	docker-compose --project-name elasticsearch_v7 down --volumes --remove-orphans
.PHONY: docker-down

docker-restart:
	make docker-down docker-up
.PHONY: docker-restart