variable "project_id" {
  description = "project id"
  type        = string
}

variable "bucket_name" {
  description = "my_cloud_bucket"
  type        = list(string)
}

variable "region" {
  description = "region where the resources are located"
  type        = string
  default     = "europe-west1"
}

variable "credentials" {
  description = "path to credentials needed to  run the project"
  type        = string
}

variable "functions" {
  description = "list of function names"
  type        = list(string)
}

variable "runtime" {
  description ="project runtime"
  type        = string
}

variable "memory" {
  description = "available memory"
  type        = list(number)
}

variable "pubsub_topic" {
  description = "pubsub topic names"
  type        = list(string)
}

variable "pubsub_subscription" {
  description = "pubsub subscription names"
  type        = list(string)
}