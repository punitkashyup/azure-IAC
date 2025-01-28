terraform {
  backend "azurerm" {
    # resource_group_name  = "interviewai-dev"
    # storage_account_name = "interviewaidev"
    # container_name       = "dev-terraform-state-files"
    # key                  = "dev-terraform.tfstate"
    #access_key           = "Passing from Pipeline secrets"
  }
}
