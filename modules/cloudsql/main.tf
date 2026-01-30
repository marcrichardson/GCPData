resource "google_sql_database_instance" "instance" {
  name             = var.name
  database_version = "POSTGRES_14"
  region           = var.region

  settings {
    tier = var.tier
  }
}
