resource "aws_ecr_repository" "repo_1" {
  name                 = var.ecr_repo1
  image_tag_mutability = "IMMUTABLE"
}

resource "aws_ecr_repository" "repo_2" {
  name                 = var.ecr_repo2
  image_tag_mutability = "IMMUTABLE"
}

output "ECR-Repo1" {
  value = aws_ecr_repository.repo_1.repository_url
}

output "ECR-Repo2" {
  value = aws_ecr_repository.repo_2.repository_url
}