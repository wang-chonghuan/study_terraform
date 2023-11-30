resource "aws_iam_role_policy" "policy" {
  name = "policy"
  role = "role"
  policy = jsonencode({
    "Statement" = [{
      "Action" = "s3:*",
      "Effect" = "Allow",
    }],
  })
}

resource "aws_instance" "example" {
  ami = "ami-a1b2c3d4"
  instance_type = "t2.micro"
  depends_on = [
    aws_iam_role_policy.policy,
  ]
}