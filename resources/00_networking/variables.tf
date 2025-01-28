variable "name" {}
variable "location" {}
variable "environment" {}
variable "resource_group_name" {}
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for Virtual Network"
  default     = ["10.0.0.0/16"]
}
variable "private_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for private subnet"
  default     = ["10.0.1.0/24"]
}
variable "public_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for public subnet"
  default     = ["10.0.2.0/24"]
}