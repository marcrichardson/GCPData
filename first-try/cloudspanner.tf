resource "google_spanner_instance" "spanner" {
  name         = "spanner-instance"
  config       = "regional-${var.region}"
  display_name = "Spanner Instance"
  num_nodes    = 1
}

resource "google_spanner_database" "spanner_db" {
  instance = google_spanner_instance.spanner.name
  name     = "spanner-db"
}
