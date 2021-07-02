terraform {
  backend "gcs" {
    bucket = "tf_state_bucket"
    prefix = "terraform_practise"
  }
}