############################
# Core Project Settings
############################

variable "project_id" {
  description = "GCP project ID"
  default = "actions-lab-3fa52"
  type        = string
}

#variable "region" {
#  description = "Primary GCP region"
#  type        = string
#  default     = "us-central1"
#}

variable "zone" {
  description = "Primary GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

############################
# Cloud Storage
############################

variable "gcs_bucket_name" {
  description = "Cloud Storage bucket name"
  default = "marc.richardson.bucket"
  type        = string
}

############################
# BigQuery
############################

variable "bq_dataset_id" {
  description = "BigQuery dataset ID"
  type        = string
  default     = "analytics"
}

############################
# Pub/Sub
############################

variable "pubsub_topic_name" {
  description = "Pub/Sub topic name"
  type        = string
  default     = "events-topic"
}

variable "pubsub_subscription_name" {
  description = "Pub/Sub subscription name"
  type        = string
  default     = "events-subscription"
}

############################
# Dataproc
############################

variable "dataproc_cluster_name" {
  description = "Dataproc cluster name"
  type        = string
  default     = "dataproc-cluster"
}

variable "dataproc_master_machine_type" {
  description = "Dataproc master node machine type"
  type        = string
  default     = "e2-standard-2"
}

variable "dataproc_worker_machine_type" {
  description = "Dataproc worker node machine type"
  type        = string
  default     = "e2-standard-2"
}

variable "dataproc_worker_count" {
  description = "Number of Dataproc worker nodes"
  type        = number
  default     = 2
}

############################
# Dataflow
############################

variable "dataflow_job_name" {
  description = "Dataflow job name"
  type        = string
  default     = "example-dataflow-job"
}

variable "dataflow_template_path" {
  description = "GCS path to Dataflow template"
  type        = string
  default     = "gs://dataflow-templates/latest/Word_Count"
}

############################
# Bigtable
############################

variable "bigtable_instance_name" {
  description = "Bigtable instance name"
  type        = string
  default     = "bigtable-instance"
}

variable "bigtable_cluster_id" {
  description = "Bigtable cluster ID"
  type        = string
  default     = "bt-cluster"
}

variable "bigtable_num_nodes" {
  description = "Bigtable node count"
  type        = number
  default     = 3
}

############################
# Cloud SQL
############################

variable "cloudsql_instance_name" {
  description = "Cloud SQL instance name"
  type        = string
  default     = "postgres-instance"
}

variable "cloudsql_tier" {
  description = "Cloud SQL machine tier"
  type        = string
  default     = "db-custom-1-3840"
}

variable "cloudsql_database_name" {
  description = "Cloud SQL database name"
  type        = string
  default     = "appdb"
}

############################
# Cloud Spanner
############################

variable "spanner_instance_name" {
  description = "Spanner instance name"
  type        = string
  default     = "spanner-instance"
}

variable "spanner_nodes" {
  description = "Number of Spanner nodes"
  type        = number
  default     = 1
}

############################
# Cloud Functions
############################

variable "cloud_function_name" {
  description = "Cloud Function name"
  type        = string
  default     = "hello-function"
}

variable "cloud_function_runtime" {
  description = "Cloud Function runtime"
  type        = string
  default     = "python311"
}

variable "cloud_function_entry_point" {
  description = "Cloud Function entry point"
  type        = string
  default     = "hello_world"
}

############################
# Memorystore
############################

variable "redis_instance_name" {
  description = "Redis instance name"
  type        = string
  default     = "redis-instance"
}

variable "redis_memory_size_gb" {
  description = "Redis memory size (GB)"
  type        = number
  default     = 1
}

############################
# Firestore
############################

variable "firestore_location" {
  description = "Firestore location"
  type        = string
  default     = "us-central1"
}

