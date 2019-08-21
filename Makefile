PROJECT_NAME=subtil

docker-compose-backend = docker-compose -f backend/docker-compose.yml -p $(PROJECT_NAME)-backend
docker-compose-workers = docker-compose -f workers/docker-compose.yml -p $(PROJECT_NAME)-workers

backend-up: ## [container=] ## (Re-)Create and start containers
	@$(docker-compose-backend) up -d --remove-orphans

workers-up: ## [container=] ## (Re-)Create and start containers
	@$(docker-compose-workers) up -d --remove-orphans

backend-ps:
	@$(docker-compose-backend) ps