# Copyright 2026 Google. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "remote_state_bucket" {
  description = "GCS bucket for foundation remote state"
  type        = string
}

variable "golden_path" {
  description = "Selected corporate Golden Path ('ml-modeling', 'ai-agent', or null for legacy target_apis mode)."
  type        = string
  default     = null
}

variable "tenant_state_bucket" {
  description = "GCS bucket used by the tenant self-service IaC SA (sa-iac-runner) for Terraform remote state."
  type        = string
}

variable "vpc_host_project_id" {
  description = "Shared VPC host project ID"
  type        = string
}

variable "groups" {
  description = "Map of IAM identity groups with predefined roles and optional custom permissions"
  type = map(object({
    id                 = string
    display_name       = string
    description        = string
    domain             = string
    owners             = list(string)
    managers           = optional(list(string), [])
    members            = list(string)
    roles              = list(string)
    custom_permissions = optional(list(string), [])
  }))
}

variable "budget_alert_emails" {
  description = "List of individual user emails for budget alerts"
  type        = list(string)
  default     = []
}

variable "business_code" {
  description = "Business code identifier"
  type        = string
}

variable "business_unit" {
  description = "Business unit name"
  type        = string
}

variable "project_suffix" {
  description = "Project suffix"
  type        = string
}

variable "billing_code" {
  description = "Billing code"
  type        = string
}

variable "primary_contact" {
  description = "Primary contact person"
  type        = string
}

variable "secondary_contact" {
  description = "Secondary contact person"
  type        = string
  default     = ""
}

variable "project_deletion_policy" {
  description = "Policy for project deletion"
  type        = string
  default     = "PREVENT"
}

variable "folder_deletion_protection" {
  description = "Whether to protect folders from deletion"
  type        = bool
  default     = true
}

variable "brand_alignment" {
  description = "Primary customer machinery brand alignment"
  type        = string
  default     = ""
}

variable "region" {
  description = "GCP region for foundation workspace and Compute Engine quota dimensions"
  type        = string
  default     = "europe-west3"
}

variable "enable_compute_quotas" {
  description = "Manage Compute Engine CPU and GPU quota preferences via the Cloud Quotas API"
  type        = bool
  default     = true
}

variable "cpu_quota_limit" {
  description = "Optional override for regional Compute Engine vCPUs (CPUS-per-project-region)"
  type        = number
  default     = null
}

variable "gpu_quota_limit" {
  description = "Optional override for global Compute Engine GPUs (GPUS-ALL-REGIONS-per-project)"
  type        = number
  default     = null
}

variable "gpu_family_quota_limits" {
  description = "Optional per-family regional Compute Engine GPU quota overrides"
  type = object({
    nvidia_t4   = optional(number)
    nvidia_l4   = optional(number)
    nvidia_a100 = optional(number)
  })
  default = {}
}

variable "quota_contact_email" {
  description = "Optional individual admin email address for Cloud Quotas preference notifications (required only for quota increase requests)"
  type        = string
  default     = null
}

variable "quota_overrides" {
  description = "Optional map of advanced Cloud Quotas preference overrides"
  type = map(object({
    name                 = optional(string)
    service              = optional(string, "compute.googleapis.com")
    quota_id             = string
    preferred_value      = number
    dimensions           = optional(map(string), {})
    ignore_safety_checks = optional(string)
    justification        = optional(string)
  }))
  default = {}
}
