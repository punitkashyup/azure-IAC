// RG //
output "rg-name" {
  value = module.rg.rg-name
}

output "rg-location" {
  value = module.rg.rg-location
}

// Storage account  //
output "sa1-name" {
  value = module.storage-account.sa1-name
}

output "sa1-tier" {
  value = module.storage-account.sa1-tier
}

output "sa1-replication-type" {
  value = module.storage-account.sa1-replication-type
}

// Container //
output "sa1c2-name" {
  value = module.storage-account.sa1c2-name
}

output "container-access-type" {
  value = module.storage-account.container-access-type
}


# // ACR //
# output "acr-name" {
#   value = module.acr.acr-name
# }

# output "acr-login-server" {
#   value = module.acr.acr-login-server
# }

# output "acr-admin-username" {
#   value = module.acr.acr-admin-username
# }

# output "acr-admin-password" {
#   value     = module.acr.acr-admin-password
#   sensitive = true
# }


// Log Analytics Workspace //
output "law-id" {
  value = module.law.law-id
}


// static-app-web //
output "static-web-app-name" {
  value = module.static-web-app.static-web-app-name
}
output "static-web-app-location" {
  value = module.static-web-app.static-web-app-location
}

output "swa1-default-host-name" {
  value = module.static-web-app.swa1-default-host-name
}


// 7 postgre //
output "psqlfs-admin-user-name" {
  value = module.postgre.psqlfs-admin-user-name
}

output "psqlfs-admin-pw" {
  value     = module.postgre.psqlfs-admin-pw
  sensitive = true
}

output "psqlfs-server-url" {
  value = module.postgre.psqlfs-server-url
}


// 8 Application Insight //
output "application-insight-resource-id" {
  value = module.application-insight.application-insight-resource-id
}

output "appplication-insight-connection-string" {
  value     = module.application-insight.appplication-insight-connection-string
  sensitive = true
}

output "app_insights_instrumentation_key" {
  value     = module.application-insight.app_insights_instrumentation_key
  sensitive = true
}


###################################################################
