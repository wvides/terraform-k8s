output "client_certificate" {
  value = "${google_container_cluster.cluster.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.cluster.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.cluster.master_auth.0.cluster_ca_certificate}"
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

output "node_pool_size" {
  value = "${google_container_node_pool.node_pool.node_count}"
}
