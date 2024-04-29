keyring_name = "test-kms-keys"
keyring_location = "global"
project_id = "trantor-test-379409"

key = {
  name        = "binary-auth-key"
  purpose     = "ASYMMETRIC_SIGN"
  algorithm   = "RSA_SIGN_PKCS1_4096_SHA512"
}

services_to_enable = [ 
  "binaryauthorization.googleapis.com",
  "cloudkms.googleapis.com"
 ]

registry_repository = {
  description   = "Repository to store signed images"
  repository_id = "signed-images-repository"
  format        = "DOCKER"
  location      = "asia-south1"
}
