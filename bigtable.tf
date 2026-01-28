resource "google_bigtable_instance" "bt" {
  name          = "bigtable-instance"
#  instance_type = "PRODUCTION"

  cluster {
    cluster_id   = "bt-cluster"
    zone         = "${var.region}-a"
    num_nodes    = 3
    storage_type = "SSD"
  }
}

resource "google_bigtable_table" "table" {
  name          = "example-table"
  instance_name = google_bigtable_instance.bt.name

  column_family {
    family = "cf1"
  }
}
