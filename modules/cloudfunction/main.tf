resource "google_cloudfunctions2_function" "fn" {
  name     = var.name
  location = var.region

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point
  }

  service_config {
    available_memory = "256M"
  }
}
