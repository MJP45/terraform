variable "project_id" {
  description = "project id"
  type        = string
}

variable "bucket_name" {
  description = "my_cloud_bucket"
  type        = string
}

variable "region" {
  description = "region where the resources are located"
  type        = string
  default     = "europe-west1"
}

variable "credentials" {
  description = "path to credentials needed to run the project"
  type        = string
}