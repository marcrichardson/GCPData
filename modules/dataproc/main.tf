resource "google_dataproc_cluster" "cluster" {
  name   = var.name
  region = var.region

  cluster_config {
    master_config {
      machine_type = var.master_type
      num_instances = 1
    }

    worker_config {
      machine_type = var.worker_type
      num_instances = var.worker_count
    }
  }
}
