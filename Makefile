
build-docker:
	docker build --rm -t gulp-go-env .

npm-install:
	./docker-run npm install

sample:
	cd ./sample && ../node_modules/.bin/gulp devs

test:
	./docker-run mocha ./ \
		--reporter=spec \
		--bail

.PHONY: test sample
