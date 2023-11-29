provider "aws" {
    region = "us-east-2"
}

variable "bucket_name" {
    description = "the name of the bucket you wish to create"
}

variable "bucket_suffix" {
    default = "-abcd"
}

resource "aws_s3_bucket" "bucket" {
    bucket = "${var.bucket_name}${var.bucket_suffix}"
}

// terraform apply -var bucket_suffix=hello
// terraform apply -var bucket_name=kevholditch -var bucket_suffix=foo

/*
export TF_VAR_bucket_name=<your-bucketname>
export TF_VAR_bucket_suffix=via-env
*/

/*
terraform.tfvars
bucket_name = "<your-bucketname>"
bucket_suffix = "from-file"
*/