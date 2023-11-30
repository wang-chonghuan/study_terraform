output "message" {
    value = "Hello World"
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "first_bucket" {
    bucket = "kevholditch-bucket-outputs"
}

output "bucket_name" {
    value = aws_s3_bucket.first_bucket.id
}

output "bucket_arn" {
    value = aws_s3_bucket.first_bucket.arn
}

output "bucket_information" {
    value = "bucket name: ${aws_s3_bucket.first_bucket.id}, bucket arn: ${aws_s3_bucket.first_bucket.arn}"
}