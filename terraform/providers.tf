terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.26.0"
    }
  }

  backend "gcs" {
    bucket  = "testing-infra-state"
    prefix  = "test-binary-authorisation"
  }
}

provider "google" {
  # Configuration options
  project = "trantor-test-379409"
}
