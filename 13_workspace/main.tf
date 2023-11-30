provider "aws" {
    region = "us-east-2"
}

resource "aws_sqs_queue" "queue" {
    name = "${terraform.workspace}-queue"
}