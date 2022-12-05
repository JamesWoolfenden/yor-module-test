# This module has been tested with Terraform 0.13 only.
#
terraform {
  required_version = ">= 0.14.5"
  required_providers {
    google = ">= 4.8"
  }
}

# Create a slot for the secret in Secret Manager
resource "google_secret_manager_secret" "secret" {
  project   = var.project_id
  secret_id = var.id
  labels    = var.labels
  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
      replicas {
        location = "us-east1"
      }
    }
  }
}

