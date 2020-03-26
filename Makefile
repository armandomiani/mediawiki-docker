IMAGE_NAME := mediawiki-docker
CONTAINER_NAME := mediawiki-container
DF_FOLDER := 1/1.33/

build:
	docker build -t $(IMAGE_NAME) $(DF_FOLDER)


run:
	docker run -it -d --name $(CONTAINER_NAME) -e "MEDIAWIKI_PORT=80" -p 8080:80 $(IMAGE_NAME)


stop:
	docker rm -f `docker ps -aq`


attach:
	docker exec -it $(CONTAINER_NAME) bash
