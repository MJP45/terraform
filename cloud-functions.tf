resource "google_cloudfunctions_function" "public-function" {
  name = var.functions[0]
  description = "public function"
  runtime = var.runtime

  available_memory_mb = var.memory[0]
  source_archive_bucket = "google_storage_bucket.my_function_bucket"
  trigger_http = true
  entry_point = "archive-data"
}

  # IAM entry for all users to invoke the function
  resource "google_cloudfunctions_function_iam_member" "developer" {
    project         = google_cloudfunctions_function.public-function.project
    region          = google_cloudfunctions_function.public-function.region
    cloud_function  = google_cloudfunctions_function.public-function.name

    role    = "roles/cloudfunctions.developer"
    member  = "allUsers"
  }
