output "role" {
  value = {
    id   = aws_iam_role.the-role.id
    arn  = aws_iam_role.the-role.arn
    name = aws_iam_role.the-role.name
  }
}

output "policy" {
  value = {
    arn         = aws_iam_policy.the-role-policy.arn
    id          = aws_iam_policy.the-role-policy.policy_id
    description = aws_iam_policy.the-role-policy.description
    name        = aws_iam_policy.the-role-policy.name
    path        = aws_iam_policy.the-role-policy.path
    policy      = aws_iam_policy.the-role-policy.policy
  }
}