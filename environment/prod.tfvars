// 1 Resources default name //
name        = "interview"
environment = "prod"
location    = "central india"
subscription_id = "97550fb7-8bb4-4203-ae5a-f7ea8ec7896e"


// 2 Storage account  //
storage-account-tier-standard        = "Standard" # Case sensitive
storage-account-replication-type-LRS = "LRS"
sa1c1-name                           = "terraform-state-files"
sa1c2-name                           = "interviewassets"
container-access-type-container      = "container"


// 3  acr //
acr-sku = "Basic"


// 4 Log analytics workspace //
law-sku            = "PerGB2018"
law-retention_days = 30
daily_quota_gb     = 0.1


// 5 Static app web //
swa-sku-tier = "Standard" # "Free" # Case sensitive
swa-location = "east asia"


// 6 Application-Inisghts //
application_type = "other" # other for python


// 7 Postgre //
psqlfs-admin-user-name = "techdome"
psqlfs-admin-pw        = "10CI7YvnA2LF"

// 8 App service //

// App Service Plan //
asp-os-type  = "Linux"
asp-sku-name = "B1" // F1 = Free


// site_config

// application_stack //
docker_image_name = "interview-be-prod:1" #######################################################################

// app_settings //

// # Storage Account //

// # Application Insight //
// ## pipeline generated //


# // # AI Service 
AZURE_ENDPOINT                  = "test" # "https://techdome-ai-ml-coe.openai.azure.com/"
API_KEY                         = "test" # "56c9375c20ea4bc59259b4a24ee08e6d"
API_VERSION                     = "test" # "2024-02-01"
model                           = "test" # "gpt4o_model"
SPEECH_REGION                   = "test" # "westus"
TEXT_TO_SPEECH_SUBSCRIPTION_KEY = "test" # "dc3ee357cd1f47f19560794237b05430"
SECRET_KEY                      = "test" # "c5fbbb6d5dc3822379111db0d6493f5d56d35e451f9764b48fabeae6fc70f633"

# // # DB //
# psqlfs-db-connection-string = "Github vars"

// #  //
EMAIL_CONNECTION_STRING = "test" # "endpoint=https://aivoicebotdev.unitedstates.communication.azure.com/;accesskey=CLhyRmO6P6QqrkRmqIqdlfxE9eicdlfVyNMXStZrJo81sAJQza9oJQQJ99AIACULyCp6k5LRAAAAAZCSqO9L"
SENDER_ADDRESS          = "DoNotReply@2e0ac0b1-0e13-4e29-87fc-1c97815fc1ef.azurecomm.net"

// # Log Analytics Workspace //
LOGS_CONNECTION_STRING = "test" #"InstrumentationKey=13234154-abaa-4047-a293-0259b1b2c0a8;IngestionEndpoint=https://centralindia-0.in.applicationinsights.azure.com/;LiveEndpoint=https://centralindia.livediagnostics.monitor.azure.com/;ApplicationId=b12cbeb7-dfad-4247-b4bf-e5655767073d"

