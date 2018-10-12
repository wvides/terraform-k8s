variable "project_id" {
  description = "Variable for Google Cloud Project ID (not name) this value can be found under the project dashboard"
  default     = "kubernetes-learn-218401"
}

variable "master_node_password" {
  description = "A password to access the cluster master"
  default     = "root"
}

variable "master_node_username" {
  description = "A username to access the cluster master"
  default     = "root"
}

variable "preemptible" {
  description = "Go with this option set to 'true' f you want a cluster that is cheaper but won't have guarantee on its nodes (they will be replaced every 24 hours)"
  default     = "true"
}
