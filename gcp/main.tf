provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project_id}"
  region      = "us-central1"
}

resource "google_container_cluster" "production" {
  name               = "learn"
  zone               = "us-central-1a"
  initial_node_count = 3
  preemptible        = "${var.preemptible}"

  master_auth {
    password = "${var.master_node_password}"
    username = "${var.master_node_username}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      name = "kubernetes-production"
    }

    tags = ["environment", "production"]
  }
}
