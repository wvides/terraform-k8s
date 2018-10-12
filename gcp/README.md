
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| master_node_password | A password to access the cluster master | string | `root` | no |
| master_node_username | A username to access the cluster master | string | `root` | no |
| preemptible | Go with this option set to 'true' f you want a cluster that is cheaper but won't have guarantee on its nodes (they will be replaced every 24 hours) | string | `true` | no |
| project_id | Variable for Google Cloud Project ID (not name) this value can be found under the project dashboard | string | `kubernetes-learn-218401` | no |

## Outputs

| Name | Description |
|------|-------------|
| client_certificate |  |
| client_key |  |
| cluster_bla |  |
| cluster_ca_certificate |  |
| cluster_id |  |
| cluster_name |  |
| cluster_project |  |
| project_number |  |

