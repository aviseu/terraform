resource "google_sql_database_instance" "instance" {
  project = var.project_id
  name    = var.instance_name
  region  = var.region

  database_version    = var.database_version
  deletion_protection = var.deletion_protection

  instance_type = "CLOUD_SQL_INSTANCE"

  settings {
    tier              = var.tier
    availability_type = "ZONAL"
    disk_size         = var.disk_size
    edition           = "ENTERPRISE"

    database_flags {
      name  = "max_connections"
      value = var.max_connections
    }

    backup_configuration {
      enabled = false
    }
  }
}
