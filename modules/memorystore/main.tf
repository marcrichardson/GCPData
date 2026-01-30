resource "google_redis_instance" "redis" {
  name           = var.name
  region         = var.region
  memory_size_gb = var.memory
}
