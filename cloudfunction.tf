resource "google_cloudfunctions2_function" "function" {
  name     = "hello-function"
  location = var.region

  build_config {
    runtime     = "python311"
    entry_point = "hello_world"

    source {
      storage_source {
        bucket = google_storage_bucket.data_bucket.name
        object = "function-source.zip"
      }
    }
  }

  service_config {
    available_memory = "256M"
  }
}
