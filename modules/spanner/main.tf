resource "google_spanner_instance" "instance" {
  name         = var.name
  config       = "regional-${var.region}"
  display_name = var.name
  num_nodes    = var.nodes
}
