IMAGES_PATH = ${HOME}

build:
	docker build -t sony-pm-alt .

start:
	docker run \
		--rm \
		-d \
		-u "$(shell id -u):$(shell id -g)" \
		--name sony-pm-alt \
		--net=host \
		-v "${IMAGES_PATH}:/home/sony/data" \
		sony-pm-alt

.PHONY: build start
