output "service_name" {
  value = google_cloud_run_v2_service.service.name
}

output "backend" {
  value = google_compute_region_backend_service.backend.self_link
}

output "service_url" {
  value = google_cloud_run_v2_service.service.uri
}

output "service_account_email" {
  value = google_service_account.service_account.email
}
