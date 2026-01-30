############################
# Core
############################

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

############################
# Storage
############################

variable "bucket_name" {
  description = "GCS bucket name"
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
  description = "Dataproc master machine type"
  type        = string
  default     = "e2-standard-2"
}

variable "dataproc_worker_machine_type" {
  description = "Dataproc worker machine type"
  type        = string
  default     = "e2-standard-2"
}

variable "dataproc_worker_count" {
  description = "Dataproc worker count"
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
  description = "Cloud SQL tier"
  type        = string
  default     = "db-custom-1-3840"
}

############################
# Spanner
############################

variable "spanner_instance_name" {
  description = "Spanner instance name"
  type        = string
  default     = "spanner-instance"
}

variable "spanner_nodes" {
  description = "Spanner node count"
  type        = number
  default     = 1
}

############################
# Cloud Function
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
# Memorystore (Redis)
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

