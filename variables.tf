provider "aws" {
    region = "us-east-2"
}

variable "bucket_name" {
    description = "the name of the bucket you wish to create"
}

resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
}

variable "bucket_name_2" {}