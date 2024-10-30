output "cd_user_access_key_id" {
  description = "AWS key id for cd user"
  value       = aws_iam_access_key.cd.id
}

output "cd_user_access_key_secret" {
  description = "AWS key secret for cd user"
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}


output "ecr_repo_app" {
  description = "value"
  value       = aws_ecr_repository.app.repository_url
}

output "ecr_repo_proxy" {
  description = "value"
  value       = aws_ecr_repository.proxy.repository_url
}
