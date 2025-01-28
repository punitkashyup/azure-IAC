// backend for prod //
resource_group_name  = "interview-prod"
storage_account_name = "interviewprod"
container_name       = "terraform-state-files"
key                  = "prod-terraform.tfstate"
access_key           = ""