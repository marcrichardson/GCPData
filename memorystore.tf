resource "google_redis_instance" "redis" {
  name           = "redis-instance"
  tier           = "STANDARD_HA"
  memory_size_gb = 1
  region         = var.region
}
