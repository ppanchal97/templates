provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_role" "kube2iam-ingress-role" {
  name = "parik-kinbal-dev-kube2iam-ingress-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        }
      },
      {
        "Action" : "sts:AssumeRole",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "*"
        }
      }
    ]
  })
}