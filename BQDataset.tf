resource "google_bigquery_dataset" "analytics" {
  dataset_id = "analytics"
  location   = var.region
}

resource "google_bigquery_table" "users" {
  dataset_id = google_bigquery_dataset.analytics.dataset_id
  table_id   = "users"
  project    = var.project_id
  friendly_name = "Users Table"
  description   = "Stores user info"

  schema = jsonencode([
    {
      name = "user_id"
      type = "STRING"
      mode = "REQUIRED"
    },
    {
      name = "email"
      type = "STRING"
      mode = "NULLABLE"
    },
    {
      name = "signup_date"
      type = "TIMESTAMP"
      mode = "NULLABLE"
    }
  ])
}
