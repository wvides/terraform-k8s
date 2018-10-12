output "client_certificate" {
  value = "${google_container_cluster.production.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.production.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.production.master_auth.0.cluster_ca_certificate}"
}

output "cluster_name" {
  value = "${google_container_cluster.production.name}"
}

output "cluster_id" {
  value = "${google_container_cluster.production.id}"
}

output "cluster_project" {
  value = "${google_container_cluster.production.project}"
}

output "cluster_bla" {
  value = "${google_container_cluster.production.}"
}
