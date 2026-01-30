resource "google_project_service" "bq" {
  service = "bigquery.googleapis.com"
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_id
  location   = var.location

  depends_on = [google_project_service.bq]
}
