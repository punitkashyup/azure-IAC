variable "name" {}
variable "resource_group_name" {}
variable "location" {}
variable "environment" {}

// ACR //
variable "docker_image_name" {}
variable "acr-login-server" {}
variable "acr-admin-username" {}
variable "acr-admin-password" {}

// Storage Account //
variable "sa1-name" {}
variable "storage-account-connection-string1" {}
variable "sa1c2-name" {}

variable "site-config-always-on" {}
variable "use-32-bit-worker-process" {}
variable "asp-os-type" {}
variable "asp-sku-name" {}

// App settings
variable "AZURE_ENDPOINT" {}
variable "API_KEY" {}
variable "API_VERSION" {}
variable "model" {}
variable "SPEECH_REGION" {}
variable "TEXT_TO_SPEECH_SUBSCRIPTION_KEY" {}
variable "SECRET_KEY" {}

// DB //
variable "psqlfs-db-connection-string" {}

variable "EMAIL_CONNECTION_STRING" {}
variable "swa1-default-host-name" {}
variable "SENDER_ADDRESS" {}

// Application Insight
variable "application-insight-resource-id" {}        #
variable "appplication-insight-connection-string" {} #

variable "LOGS_CONNECTION_STRING" {}
variable "subnet_id" {
  description = "ID of the public subnet for App Service"
}

