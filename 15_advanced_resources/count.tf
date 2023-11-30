provider "aws" {
  region  = "us-east-2"
}

resource "aws_sqs_queue" "queues" {
    count = 4
    name = "queue-${count.index}"
}

output "queue-0-name" {
  value = aws_sqs_queue.queues[0].name
}