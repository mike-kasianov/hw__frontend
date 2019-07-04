.PHONY: build unit_test build_release cleanup

IMAGE_NAME := hello-world.frontend:build-$(BUILD_NUMBER)
CONTAINER_NAME := hello-world.frontend.build-$(BUILD_NUMBER)

build:
	@echo "\n========== CREATING DOCKER IMAGE ==========\n"
	docker build -t $(IMAGE_NAME) -f Dockerfile ../
	@echo "\n========== CREATING DOCKER CONTAINER ==========\n"
	docker create --name $(CONTAINER_NAME) $(IMAGE_NAME)
	@echo "\n========== STARTING DOCKER CONTAINER ==========\n"
	docker start $(CONTAINER_NAME)
	@echo "\n========== PREPARING DOCKER CONTAINER ==========\n"
	docker exec $(CONTAINER_NAME) sh -c "ci/get-deps.sh"

unit_test:
	@echo "\n========== RUNNING UNIT TESTS ==========\n"
	docker exec $(CONTAINER_NAME) sh -c "mix test"

build_release:
	@echo "\n========== BUILDING RELEASE ==========\n"
	# TODO

cleanup:
	@echo "\n========== STOPPING DOCKER CONTAINER ==========\n"
	docker stop $(CONTAINER_NAME)
	@echo "\n========== REMOVING DOCKER CONTAINER ==========\n"
	docker rm $(CONTAINER_NAME)
	@echo "\n========== REMOVING DOCKER IMAGE ==========\n"
	docker image rm $(IMAGE_NAME)
