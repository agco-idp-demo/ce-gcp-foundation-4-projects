terraform {
  backend "gcs" {
    bucket = "bkt-agco-ws1-pso-pf-tfstate"
    prefix = "terraform/projects/gp-ui-sim-1-a1b2/test"
  }
}
