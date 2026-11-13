terraform {
  required_version = ">= 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.49"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.49"
    }
  }
}

provider "google" {
  region = "europe-west4"
}

provider "google-beta" {
  region = "europe-west4"
}
