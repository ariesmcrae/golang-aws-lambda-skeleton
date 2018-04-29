default: build

install_dependencies:
	go get github.com/aws/aws-lambda-go/lambda

clean:
	@rm -rf dist

compile: clean
	GOOS=linux GOARCH=amd64 go build -o dist/main ./cmd

run: compile
	sam local invoke Function -e event.json -t deploy.sam.yaml

build: compile
	@zip -j dist/handler.zip dist/main

.PHONY: default clean compile run build	