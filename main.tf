// 01_rg //
module "rg" {
  source      = "./resources/01_rg"
  name        = var.name
  location    = var.location
  environment = var.environment
}

module "networking" {
  source              = "./resources/00_networking"
  name                = var.name
  location            = var.location
  environment         = var.environment
  resource_group_name = module.rg.rg-name
  vnet_address_space  = ["10.0.0.0/16"]
  private_subnet_prefix = ["10.0.1.0/24"]
  public_subnet_prefix  = ["10.0.2.0/24"]
}

// 02_storage-account //
module "storage-account" {
  source                               = "./resources/02_storage-account"
  name                                 = var.name
  location                             = module.rg.rg-location
  environment                          = var.environment
  resource_group_name                  = module.rg.rg-name
  storage-account-tier-standard        = var.storage-account-tier-standard
  storage-account-replication-type-LRS = var.storage-account-replication-type-LRS
  sa1c1-name                           = var.sa1c1-name
  sa1c2-name                           = var.sa1c2-name
  container-access-type-container      = var.container-access-type-container
}

// 03_acr //
module "acr" {
  source              = "./resources/03_acr"
  name                = var.name
  resource_group_name = module.rg.rg-name
  location            = module.rg.rg-location
  environment         = var.environment
  acr-sku             = var.acr-sku
  acr-admin-enabled   = var.acr-admin-enabled
}

// 04_law //
module "law" {
  source              = "./resources/04_law"
  name                = var.name
  resource_group_name = module.rg.rg-name
  location            = module.rg.rg-location
  environment         = var.environment
  law-sku             = var.law-sku
  law-retention_days  = var.law-retention_days
  daily_quota_gb      = var.daily_quota_gb
}

// 05_static-web-app //
module "static-web-app" {
  source              = "./resources/05_static-web-app"
  name                = var.name
  environment         = var.environment
  resource_group_name = module.rg.rg-name
  location            = module.rg.rg-location
  swa-location        = var.swa-location
  swa-sku-tier        = var.swa-sku-tier
}


// 06_application-insight //
module "application-insight" {
  source              = "./resources/06_application-insight"
  name                = var.name
  environment         = var.environment
  resource_group_name = module.rg.rg-name
  location            = var.location
  application_type    = var.application_type
  law-id              = module.law.law-id

  depends_on = [module.law]
}

// 07_postgre //
module "postgre" {
  source              = "./resources/07_postrgre"
  name                = var.name
  resource_group_name = module.rg.rg-name
  environment         = var.environment
  location            = var.location
  subnet_id           = module.networking.private_subnet_id
  private_dns_zone_id = module.networking.private_dns_zone_id
  psqlfs-admin-user-name = var.psqlfs-admin-user-name
  psqlfs-admin-pw       = var.psqlfs-admin-pw
}


// 08_app-service //
module "app-service" {
  source              = "./resources/08_app-service"
  name                = var.name
  resource_group_name = module.rg.rg-name
  environment         = var.environment
  location            = var.location
  subnet_id           = module.networking.public_subnet_id
  depends_on          = [module.acr, module.application-insight, module.postgre]

  // App service plan //
  asp-os-type  = var.asp-os-type
  asp-sku-name = var.asp-sku-name

  // site_config
  use-32-bit-worker-process = var.use-32-bit-worker-process
  site-config-always-on     = var.site-config-always-on

  // application_stack //
  docker_image_name  = var.docker_image_name
  acr-login-server   = "https://${module.acr.acr-login-server}"
  acr-admin-username = module.acr.acr-admin-username
  acr-admin-password = module.acr.acr-admin-password

  // app_settings //

  // # Storage Account //
  sa1-name                           = module.storage-account.sa1-name
  sa1c2-name                         = module.storage-account.sa1c2-name
  storage-account-connection-string1 = module.storage-account.storage-account-connection-string1

  // # Application Insight //
  application-insight-resource-id        = module.application-insight.application-insight-resource-id
  appplication-insight-connection-string = module.application-insight.appplication-insight-connection-string

  // # AI Service 
  AZURE_ENDPOINT                  = var.AZURE_ENDPOINT
  API_KEY                         = var.API_KEY
  API_VERSION                     = var.API_VERSION
  model                           = var.model
  SPEECH_REGION                   = var.SPEECH_REGION
  TEXT_TO_SPEECH_SUBSCRIPTION_KEY = var.TEXT_TO_SPEECH_SUBSCRIPTION_KEY
  SECRET_KEY                      = var.SECRET_KEY

  // # DB //
psqlfs-db-connection-string = var.psqlfs-db-connection-string
#  psqlfs-db-connection-string = "postgresql://${var.username}:${var.password}@${azurerm_postgresql_flexible_server.example.fqdn}:${azurerm_postgresql_flexible_server.example.port}/${azurerm_postgresql_flexible_server_database.example.name}?sslmode=require"


  // Static Web App //
  swa1-default-host-name = "https://${module.static-web-app.swa1-default-host-name}/invitation/"

  // #  //
  EMAIL_CONNECTION_STRING = var.EMAIL_CONNECTION_STRING
  SENDER_ADDRESS          = var.SENDER_ADDRESS

  // # Log Analytics Workspace //
  LOGS_CONNECTION_STRING = var.LOGS_CONNECTION_STRING
}







#########################################################

# // Azure AI services. This is not OpenAI //
# module "azure-ai-services" {
#   source                  = "./resources/08_azure-ai-services"
#   name                    = var.name
#   environment             = var.environment
#   resource_group_name     = module.rg.rg-name
#   location                = var.location
#   ai-location             = var.ai-location
#   ai-service_account_name = var.ai-service_account_name # it will be custom_subdomain_name.
#   ai-service_sku_name     = var.ai-service_sku_name


# // 6 // 
# data "azurerm_container_registry" "acr" {
#   name                = module.acr.acr-name
#   resource_group_name = var.name
#   depends_on          = [module.acr]
# }


# module "static-web-app-2" {
#   source              = "./resources/05_static-web-app"
#   name                = "${var.name}-admin"
#   resource_group_name = var.name
#   swa-location        = var.swa-location
#   swa-sku-tier        = var.swa-sku-tier
# }
