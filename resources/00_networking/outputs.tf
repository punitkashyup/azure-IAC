output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "private_subnet_id" {
  value = azurerm_subnet.private_subnet.id
}

output "public_subnet_id" {
  value = azurerm_subnet.public_subnet.id
}

output "private_dns_zone_id" {
  value = azurerm_private_dns_zone.postgres.id
}

output "private_dns_zone_name" {
  value = azurerm_private_dns_zone.postgres.name
}