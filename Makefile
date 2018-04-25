default: build

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