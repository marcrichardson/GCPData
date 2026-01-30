resource "google_dataflow_job" "job" {
  name              = var.name
  template_gcs_path = var.template_path
  temp_gcs_location = var.temp_location
}
