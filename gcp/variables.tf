variable "project_id" {
  description = "Variable for Google Cloud Project ID (not name) this value can be found under the project dashboard"
}

variable "master_node_password" {
  description = "A password to access the cluster master"
}

variable "master_node_username" {
  description = "A username to access the cluster master"
}

variable "preemptible" {
  description = "Go with this option set to 'true' f you want a cluster that is cheaper but won't have guarantee on its nodes (they will be replaced every 24 hours)"
  default     = "true"
}

variable "json_cred_file" {
  description = "The location for your JSON credentials file"
}

variable "cluster_name" {
  default = "staging"
}

variable "zone" {
  default = "us-central1-a"
}

variable "node_pool_name" {
  default = "staging_node_pool"
}

variable "machine_type" {
  default = "n1-standard-1"
}
