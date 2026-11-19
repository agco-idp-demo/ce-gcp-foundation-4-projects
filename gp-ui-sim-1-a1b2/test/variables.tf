variable "remote_state_bucket" {
  description = "GCS bucket for foundation remote state"
  type        = string
}

variable "golden_path" {
  description = "Selected corporate Golden Path ('ml-modeling', 'ai-agent', or null for standard project)"
  type        = string
  default     = null
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
