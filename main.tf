terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("/Users/marc/.config/gcloud/legacy_credentials/richardson.marc@gmail.com/adc.json")
}

############################
# Cloud Storage
############################
module "storage" {
  source   = "./modules/storage"
  name     = var.bucket_name
  location = var.region
}

############################
# BigQuery
############################
module "bigquery" {
  source     = "./modules/bigquery"
  dataset_id = var.bq_dataset_id
  location   = var.region
}

############################
# Pub/Sub
############################
module "pubsub" {
  source              = "./modules/pubsub"
  topic_name          = var.pubsub_topic_name
  subscription_name   = var.pubsub_subscription_name
}

############################
# Dataproc
############################
module "dataproc" {
  source        = "./modules/dataproc"
  name          = var.dataproc_cluster_name
  region        = var.region
  master_type   = var.dataproc_master_machine_type
  worker_type   = var.dataproc_worker_machine_type
  worker_count  = var.dataproc_worker_count
}

############################
# Dataflow
############################
module "dataflow" {
  source         = "./modules/dataflow"
  name           = var.dataflow_job_name
  template_path  = var.dataflow_template_path
  temp_location  = "gs://${module.storage.bucket_name}/dataflow-temp"
}

############################
# Bigtable
############################
module "bigtable" {
  source = "./modules/bigtable"
  name   = var.bigtable_instance_name
  zone   = var.zone
  nodes  = var.bigtable_num_nodes
}

############################
# Cloud SQL
############################
module "cloudsql" {
  source = "./modules/cloudsql"
  name   = var.cloudsql_instance_name
  region = var.region
  tier   = var.cloudsql_tier
}

############################
# Cloud Spanner
############################
module "spanner" {
  source = "./modules/spanner"
  name   = var.spanner_instance_name
  region = var.region
  nodes  = var.spanner_nodes
}

############################
# Cloud Function (Gen 2)
############################
module "cloudfunction" {
  source      = "./modules/cloudfunction"
  name        = var.cloud_function_name
  region      = var.region
  runtime     = var.cloud_function_runtime
  entry_point = var.cloud_function_entry_point
}

############################
# Memorystore (Redis)
############################
module "memorystore" {
  source = "./modules/memorystore"
  name   = var.redis_instance_name
  region = var.region
  memory = var.redis_memory_size_gb
}

############################
# Firestore
############################
module "firestore" {
  source   = "./modules/firestore"
  location = var.firestore_location
}
