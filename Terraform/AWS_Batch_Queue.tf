resource "aws_batch_job_queue" "nextflow-queue" {
  name     = "nextflow-batch-job-queue"
  state    = "ENABLED"
  priority = 1
  compute_environments = [
    aws_batch_compute_environment.sample.arn
  ]
}

resource "aws_batch_job_queue" "worker_queue" {
  name     = "workers-batch-job-queue"
  state    = "ENABLED"
  priority = 1
  compute_environments = [
    aws_batch_compute_environment.sample.arn
  ]
}