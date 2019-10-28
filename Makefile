CONTAINER_NAME := mediawiki-docker
DF_FOLDER := 1/1.33/

build:
	docker build -t $(CONTAINER_NAME) $(DF_FOLDER)


run:
	docker run -it -d -p 8080:80 $(CONTAINER_NAME)
