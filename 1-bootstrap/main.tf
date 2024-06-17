terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      version = ">= 4.82"
      source  = "hashicorp/google"
    }
    local = {
      version = ">= 2.5"
      source  = "hashicorp/local"
    }
  }
}

resource "local_file" "providers" {
  file_permission = "0644"
  filename        = "./test.providers.tf"
  content         = "testing"
}
