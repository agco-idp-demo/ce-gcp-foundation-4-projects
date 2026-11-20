# Copyright 2026 Google. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

terraform {
  backend "gcs" {
    bucket = "bkt-agco-ws1-pso-pf-tfstate"
    prefix = "terraform/projects/gp-ml-auto-1-a7b8/test"
  }
}
