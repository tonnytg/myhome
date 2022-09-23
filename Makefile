PORT = 8080
FOLDER = /Users/tonnytg/Documents/Projetos/MyHome/myhome
all:
	docker run -it --rm -d \
		-p 8081:80 \
		--name web web:latest

runNode:
	docker run -it --rm -d \
		-p 8080:8080 \
		-v $(FOLDER):/usr/src/app \
		--name node node:latest /bin/bash

build:
	docker build -t web:latest . --no-cache

stop:
	docker stop web

stopNode:
	docker stop node	

cleanImage:
	docker image rm web
