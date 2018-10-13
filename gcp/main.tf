provider "google" {
  credentials = "${file("${var.json_cred_file}")}"
  project     = "${var.project_id}"
  region      = "us-central1"
}

resource "google_container_node_pool" "node_pool" {
  name       = "${var.node_pool_name}"
  zone       = "${var.zone}"
  cluster    = "${google_container_cluster.cluster.name}"
  node_count = 3

  node_config {
    preemptible  = true
    machine_type = "${var.machine_type}"

    oauth_scopes = [
      "compute-rw",
      "storage-ro",
      "logging-write",
      "monitoring",
    ]
  }
}

resource "google_container_cluster" "cluster" {
  name               = "${var.cluster_name}"
  zone               = "${var.zone}"
  initial_node_count = 3

  master_auth {
    username = "${var.master_node_username}"
    password = "${var.master_node_password}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
