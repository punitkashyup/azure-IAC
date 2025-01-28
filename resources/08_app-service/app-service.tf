resource "azurerm_service_plan" "example" {
  name                = "${var.name}-asp-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.asp-os-type
  sku_name            = var.asp-sku-name
}

resource "azurerm_linux_web_app" "example" {
  name                = "${var.name}-backend-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.example.id

  virtual_network_subnet_id = var.subnet_id # From networking module

  site_config {
    always_on         = var.site-config-always-on
    use_32_bit_worker = var.use-32-bit-worker-process

    application_stack {
      docker_image_name        = var.docker_image_name
      docker_registry_url      = var.acr-login-server
      docker_registry_username = var.acr-admin-username
      docker_registry_password = var.acr-admin-password
    }
  }
  app_settings = {
    // AI Service //
    AZURE_ENDPOINT                  = var.AZURE_ENDPOINT
    API_KEY                         = var.API_KEY
    API_VERSION                     = var.API_VERSION
    MODEL                           = var.model
    SPEECH_REGION                   = var.SPEECH_REGION
    TEXT_TO_SPEECH_SUBSCRIPTION_KEY = var.TEXT_TO_SPEECH_SUBSCRIPTION_KEY

    // DB //
    DB_URL = var.psqlfs-db-connection-string

    // Storage Account //
    STORAGE_ACCOUNT_NAME = var.sa1-name
    CONTAINER_NAME       = var.sa1c2-name
    CONNECTION_STRING    = var.storage-account-connection-string1
    secret_key           = var.SECRET_KEY

    // Static Web App //
    domain = var.swa1-default-host-name

    // Email //
    email_connection_string = var.EMAIL_CONNECTION_STRING

    sender_address = var.SENDER_ADDRESS

    // LAW //
    LOGS_CONNECTION_STRING = var.LOGS_CONNECTION_STRING
  }

  // Implicit values

  #   connection_string {
  #     name  = "Database"
  #     type  = "SQLServer"
  #     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  #   }

}


