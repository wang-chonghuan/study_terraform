terraform {
    backend "s3" {
        bucket = "<your-bucket-name>"
        key = "myproject.state"
        region = "us-east-2"
    }
}
