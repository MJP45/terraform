terraform {
  required_version = ">= 1.0.1"
    required_providers {
      google = {
        source = "hashicorp/google"
        version = ">= 3.74.0"
      }
  }
}

provider "google" {
  project     = var.project_id
  credentials = file(var.credentials)
  region      = var.region
}