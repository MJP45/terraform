resource "google_storage_bucket" "my_cloud_bucket" {
  name     = var.bucket_name[0]
  location = var.region

  retention_policy {
    retention_period = 3200
  }

}

resource "google_storage_bucket" "my_function_bucket" {
  name     = var.bucket_name[1]
  location = var.region

  retention_policy {
    retention_period = 3200
  }

}
