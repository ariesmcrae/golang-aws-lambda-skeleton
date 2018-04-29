package main

import (
	"fmt"

	"github.com/ariesmcrae/golang-aws-lambda-skeleton/pkg/model"
	"github.com/aws/aws-lambda-go/lambda"
)

func main() {
	lambda.Start(Handler)
}

func Handler(request model.Request) (model.Response, error) {
	myResponse := model.Response{
		Message: fmt.Sprintf("Process Request Id %s", request.ID),
		Ok:      true,
	}

	return myResponse, nil
}
