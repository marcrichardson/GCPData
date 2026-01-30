resource "google_firestore_database" "db" {
  name        = "(default)"
  location_id = var.location
  type        = "FIRESTORE_NATIVE"
}
