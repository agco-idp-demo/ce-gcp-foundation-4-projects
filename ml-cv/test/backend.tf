terraform {
  backend "gcs" {
    bucket = "bkt-agco-ws1-pso-pf-tfstate"
    prefix = "terraform/projects/ml-cv/test"
  }
}
