default: build

install_dependencies:
	echo "Installing dependencies"
	go get github.com/aws/aws-lambda-go/lambda
	go get github.com/aws/aws-sdk-go

clean:
	@rm -rf dist
	@rm -f main

compile: clean install_dependencies
	GOOS=linux GOARCH=amd64 go build -o dist/main ./cmd
	cp dist/main ./

run: compile
	sam local invoke Function -e event.json -t deploy.sam.yaml

build: compile
	@zip -j dist/handler.zip dist/main

.PHONY: default clean compile run build	