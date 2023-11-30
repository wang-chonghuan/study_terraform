provider "aws" {
    region = "us-east-2"
}

resource "aws_sqs_queue" "my_queue" {
    name = "my_queue"
}