# Golang AWS Lambda Skeleton

## Prerequisite
* golang
* aws-sam-local
* Gnu Make

## Getting Started
```sh
git clone https://github.com/ariesmcrae/golang-aws-lambda-skeleton.git

cd golang-aws-lambda-skeleton

make install_dependencies

make run

//output
{"message":"Process Request Id 12345","ok":true}
```

## How to compile
```sh
make compile
```

## How to run on AWS Sam Local
```sh
make run
```

## How package into a zip file for deployment to AWS Lambda
```sh
make build
```
