resource "google_firestore_database" "firestore" {
  name        = "(default)"
  location_id = var.region
  type        = "FIRESTORE_NATIVE"
}
