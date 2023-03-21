# Define the default target
.DEFAULT_GOAL := help

# Start the containers
startdev:
	docker-compose -f ./docker-compose.dev.yml up --force-recreate --build

start:
	docker-compose -f ./docker-compose.yml up --force-recreate --build

# Stop and remove the containers
stop:
	docker-compose stop
	docker-compose rm -f

# Show the help message
help:
	@echo "Usage: make [TARGET]"
	@echo ""
	@echo "Targets:"
	@echo "  start   Start the containers"
	@echo "  stop    Stop and remove the containers"
	@echo "  help    Show this help message"