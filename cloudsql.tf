resource "google_sql_database_instance" "postgres" {
  name             = "postgres-instance"
  database_version = "POSTGRES_14"
  region           = var.region

  settings {
    tier = "db-custom-1-3840"
  }
}

resource "google_sql_database" "app_db" {
  name     = "appdb"
  instance = google_sql_database_instance.postgres.name
}
