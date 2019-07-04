.PHONY: build test cleanup

BUILD_NUMBER := 1
IMAGE_NAME := hello-world.frontend:build_$(BUILD_NUMBER)
CONTAINER_NAME := hello-world.frontend.build_$(BUILD_NUMBER)

build:
	docker build -t $(IMAGE_NAME) -f Dockerfile ../

test:
	docker run -it --name $(CONTAINER_NAME) $(IMAGE_NAME)

cleanup:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)
	docker image rm $(IMAGE_NAME)