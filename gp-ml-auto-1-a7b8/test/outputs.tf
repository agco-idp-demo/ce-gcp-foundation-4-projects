# Copyright 2026 Google. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.
output "project_id" {
  description = "Project id"
  value       = module.env.project_id
}

output "service_account_email" {
  description = "Base env default project service account email"
  value       = module.env.service_account_email
}

output "tenant_iac_service_account_email" {
  description = "Dedicated tenant CI/CD runner service account email"
  value       = module.golden_path.tenant_iac_service_account_email
}

output "tenant_iac_tfstate_bucket" {
  description = "Bucket for tenant infrastructure state storage"
  value       = module.golden_path.tenant_iac_tfstate_bucket
}

output "all_group_ids" {
  description = "IDs of all provisioned IAM groups"
  value       = module.golden_path.all_group_ids
}

output "central_metrics_scope_project_id" {
  description = "Central Cloud Monitoring Metrics Scope project ID linked to this project"
  value       = module.golden_path.central_metrics_scope_project_id
}

output "compute_quota_preferences" {
  description = "Compute Engine CPU and GPU Cloud Quotas preferences managed on this project"
  value       = module.golden_path.compute_quota_preferences
}
