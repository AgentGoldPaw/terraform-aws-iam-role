terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }
}

resource "aws_iam_role" "the-role" {
  name               = var.name
  description        = var.description
  assume_role_policy = var.assume_policy
}

resource "aws_iam_policy" "the-role-policy" {
  name   = var.policy_name
  policy = var.policy
}

resource "aws_iam_role_policy_attachment" "the-role-policy-attachment" {
  role       = aws_iam_role.the-role.id
  policy_arn = aws_iam_policy.the-role-policy.arn
}