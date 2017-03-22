.PHONY: build run default

# Docker container tag
IMAGE_NAME = modularitycontainers/nginx

# An absolute path to your web root
#DOCUMENT_ROOT = /

# A port you want your nginx server to run on host
PORT = 8080

default: run

build:
	docker build --tag=$(IMAGE_NAME) .

run: build
	docker run -p $(PORT):80 $(IMAGE_NAME)
