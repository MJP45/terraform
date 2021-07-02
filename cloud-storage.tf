resource "google_storage_bucket" "my_cloud_bucket" {
  name     = var.bucket_name
  location = var.region

  retention_policy {
    retention_period = 3200
  }

}
