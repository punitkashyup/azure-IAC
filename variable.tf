// resource default name //
variable "name" {}
variable "location" {}
variable "environment" {}

// Storage account  //
variable "storage-account-tier-standard" {}
variable "storage-account-replication-type-LRS" {}


// Container //
variable "sa1c1-name" {}
variable "sa1c2-name" {}
variable "container-access-type-container" {}


// acr //
variable "acr-sku" {}
variable "acr-admin-enabled" {
  type    = bool
  default = true
}

// Log analytics workpace //
variable "law-sku" {}
variable "law-retention_days" {
  type = number
}
variable "daily_quota_gb" {
  type = number
}

// static-app-web //
variable "swa-sku-tier" {}
variable "swa-location" {}


// web app //
// App Service Plan //
variable "asp-os-type" {}
variable "asp-sku-name" {}


// 07_postgre //
variable "psqlfs-admin-user-name" {}
variable "psqlfs-admin-pw" {
  sensitive = true
}


// 08_App service //
variable "docker_image_name" {}

variable "use-32-bit-worker-process" {
  type        = bool
  default     = true
  description = "Free or Shared Tiers use_32_bit_worker_process must be set to true."
}

variable "site-config-always-on" {
  type        = bool
  default     = false
  description = "Free or Shared Tiers, always_on must be set to false."
}


variable "AZURE_ENDPOINT" {}
variable "API_KEY" {}
variable "API_VERSION" {}
variable "model" {}

# variable "psqlfs-server-url" {}
variable "SPEECH_REGION" {}
variable "TEXT_TO_SPEECH_SUBSCRIPTION_KEY" {}
variable "SECRET_KEY" {}
variable "EMAIL_CONNECTION_STRING" {}
variable "SENDER_ADDRESS" {}

variable "LOGS_CONNECTION_STRING" {}


// Application-Inisghts //
variable "application_type" {}


variable psqlfs-db-connection-string {}

variable subscription_id {}

# // azure-ai-services //
# variable "ai-location" {}
# variable "ai-service_account_name" {}
# variable "ai-service_sku_name" {}



#####################################




