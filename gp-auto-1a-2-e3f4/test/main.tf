# Copyright 2026 Google. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.
# Project Factory configuration for gp-auto-1a-2-e3f4 (test)

# APIs enabled when var.golden_path is null (legacy target_apis mode)
locals {
  target_apis = [
    "monitoring.googleapis.com",
    "iam.googleapis.com",
    "iap.googleapis.com",
    "oslogin.googleapis.com",
    "logging.googleapis.com",
    "compute.googleapis.com",
    "storage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "run.googleapis.com",
    "file.googleapis.com"
  ]
}

module "env" {
  source = "git::https://github.com/AGCO-Cloud-Engineering/ce-gcp-foundations-project-factory-modules.git//modules/base_env?ref=v0.0.4"

  env                        = "test"
  business_code              = var.business_code
  business_unit              = var.business_unit
  existing_folder_id         = "folders/559013322416"
  project_suffix             = var.project_suffix
  billing_code               = var.billing_code
  primary_contact            = var.primary_contact
  secondary_contact          = var.secondary_contact
  remote_state_bucket        = var.remote_state_bucket
  project_deletion_policy    = var.project_deletion_policy
  folder_deletion_protection = var.folder_deletion_protection

  project_budget = module.golden_path.project_budget
}

module "golden_path" {
  source = "git::https://github.com/AGCO-Cloud-Engineering/ce-gcp-foundations-project-factory-modules.git//modules/golden-path-catalog?ref=v0.0.4"

  project_id                 = module.env.project_id
  golden_path                = var.golden_path
  region                     = var.region
  github_repository          = "agco-idp-demo/gp-auto-1a-2-e3f4-iac"
  remote_state_bucket        = var.remote_state_bucket
  tenant_state_bucket        = var.tenant_state_bucket
  shared_vpc_host_project_id = var.vpc_host_project_id
  wif_project_number         = "33236004616"
  wif_pool_id                = "shared-pool"

  groups                 = var.groups
  budget_alert_emails    = var.budget_alert_emails
  budget_amount_override = 10

  enable_compute_quotas   = var.enable_compute_quotas
  cpu_quota_limit         = var.cpu_quota_limit
  gpu_quota_limit         = var.gpu_quota_limit
  gpu_family_quota_limits = var.gpu_family_quota_limits
  quota_contact_email     = var.quota_contact_email
  quota_overrides         = var.quota_overrides

  additional_services = var.golden_path == null ? local.target_apis : []
}
