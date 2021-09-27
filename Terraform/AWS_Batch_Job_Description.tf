resource "aws_batch_job_definition" "test" {
  name                  = "nextflow_batch_job_definition"
  type                  = "container"
  platform_capabilities = ["EC2"]

  container_properties = <<CONTAINER_PROPERTIES
{
    "image": "${aws_ecr_repository.repo_1.repository_url}",
    "memory": 1024,
    "vcpus": 1,
    "jobRoleArn": "${aws_iam_role.container-role.arn}",
    "executionRoleArn": "${aws_iam_role.ecs-task-role.arn}"
}
CONTAINER_PROPERTIES
}