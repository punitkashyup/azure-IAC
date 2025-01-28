variable "name" {}
variable "location" {}
variable "environment" {}

variable "resource_group_name" {}

variable "psqlfs-admin-user-name" {}
variable "psqlfs-admin-pw" {}
variable "subnet_id" {
  description = "ID of the private subnet for PostgreSQL"
}

variable "private_dns_zone_id" {
  description = "ID of the private DNS zone"
}

