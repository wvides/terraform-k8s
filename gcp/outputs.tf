output "client_key" {
  value = "${google_container_cluster.cluster.master_auth.0.client_key}"
}

output "cluster_name" {
  value = "${google_container_cluster.cluster.name}"
}

output "cluster_id" {
  value = "${google_container_cluster.cluster.id}"
}

output "cluster_project" {
  value = "${google_container_cluster.cluster.project}"
}
