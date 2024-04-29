variable "services_to_enable" {
  description = "values to enable"
  type        = list(string)
}

variable "project_id" {
  description = "The project ID to deploy resources to"
  type        = string
}

variable "keyring_name" {
  description = "The name of the keyring to create"
  type        = string
}

variable "keyring_location" {
  description = "The location of the keyring to create"
  type        = string
}

variable "key" {
  description = "The name of the key to create"
  type        = object({
    name      = string
    purpose   = string
    algorithm = string
  })
}

variable "registry_repository" {
  description = "Artifact registry details to be created"
  type        = object({
    location      = string
    repository_id = string
    description   = string
    format        = string
  })
}
