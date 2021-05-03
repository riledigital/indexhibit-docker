# Rebuild images
build:
	docker-compose build --no-cache

# Start the server
start:
	docker-compose up

# Destroy all containers
uninstall:
	docker-compose down