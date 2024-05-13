// https://registry.terraform.io/providers/hashicorp/google/latest

terraform {
  required_version = "~> 1.6.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  project = "your-project-id"
}

