package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

func main() {
	lambda.Start(Handler)
}

func Handler(request Request) (Response, error) {
	return Response{
		Message: fmt.Sprintf("Process Request Id %s", request.ID),
		Ok:      true,
	}, nil

}
