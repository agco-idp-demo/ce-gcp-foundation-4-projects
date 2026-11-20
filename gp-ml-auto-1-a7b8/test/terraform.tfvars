vpc_host_project_id = "agco-ws1-pso"
remote_state_bucket = "bkt-agco-ws1-pso-pf-tfstate"
tenant_state_bucket = "bkt-agco-ws1-pso-tfstate"
golden_path         = "ml-modeling"
region              = "europe-west3"
business_code       = "gp-ml-auto-1-a7b8"
business_unit       = "ai-platform"
project_suffix      = "gp-ml-auto-1-a7b8"
billing_code        = "cc-1001042"
brand_alignment     = "fendt"
primary_contact     = "maya_lin"
secondary_contact   = ""

project_deletion_policy = "PREVENT"

budget_alert_emails = ["gcp@agcocorp.com", "maya.lin@agco.com"]

groups = {
  grp-agco-gcp-gp-ml-test-developers = {
    id           = "grp-agco-gcp-gp-ml-test-developers@agcocorp.com"
    display_name = "grp-agco-gcp-gp-ml-test-developers"
    description  = "gp ml team developers group"
    domain       = "agcocorp.com"
    roles        = ["roles/viewer", "roles/iap.tunnelResourceAccessor", "roles/compute.osAdminLogin", "roles/iam.serviceAccountUser"]
    owners       = ["naman.kulshreshtha@agcocorp.com"]
    managers     = ["ashish.soni@agcocorp.com"]
    members      = []
  }
}
