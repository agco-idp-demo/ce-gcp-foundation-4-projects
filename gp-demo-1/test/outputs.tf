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
