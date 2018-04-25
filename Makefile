default: build

install_dependencies:
	go get github.com/aws/aws-lambda-go/lambda

clean:
	@rm -f main
	@rm -f handler.zip

compile: clean
	GOOS=linux go build -o main ./cmd

run: compile
	sam local invoke Function -e event.json

build: compile
	zip handler.zip main

.PHONY: default clean compile run build	