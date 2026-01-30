resource "google_bigtable_instance" "instance" {
  name          = var.name
#  instance_type = "PRODUCTION"

  cluster {
    cluster_id = "cluster-1"
    zone       = var.zone
    num_nodes  = var.nodes
  }
}
