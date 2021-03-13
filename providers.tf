provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "terra-gcp-gitaction"
    prefix = "terraform/state"
  }
}