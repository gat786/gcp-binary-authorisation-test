data "google_project" "current" {
}

resource "google_project_service" "services_to_enable" {
  for_each = toset(var.services_to_enable)
  project = data.google_project.current.project_id
  service = each.value
}

resource "google_kms_key_ring" "test-binary-auth-keyring" {
  project = data.google_project.current.project_id
  name    = var.keyring_name
  location = var.keyring_location
}

resource "google_kms_crypto_key" "test_key" {
  name     = var.key.name
  purpose  = var.key.purpose
  key_ring = google_kms_key_ring.test-binary-auth-keyring.id
  version_template {
    algorithm = var.key.algorithm
  }
}

resource "google_artifact_registry_repository" "my-repo" {
  location      = var.registry_repository.location
  repository_id = var.registry_repository.repository_id
  description   = var.registry_repository.description
  format        = var.registry_repository.format
}
