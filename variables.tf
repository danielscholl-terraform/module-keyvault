##############################################################
# This module allows the creation of a Key Vault
##############################################################

variable "name" {
  description = "Name of the keyvault to create"
  type        = string
  default     = "spkeyvault"
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  type        = string
}

variable "names" {
  description = "Names to be applied to resources (inclusive)"
  type = object({
    environment = string
    location    = string
    product     = string
  })
  default = {
    location    = "eastus2"
    product     = "iac"
    environment = "tf"
  }
}

variable "resource_tags" {
  description = "Map of tags to apply to taggable resources in this module. By default the taggable resources are tagged with the name defined above and this map is merged in"
  type        = map(string)
  default     = {}
}

variable "sku" {
  description = "SKU of the keyvault to create"
  type        = string
  default     = "standard"
}

variable "key_permissions" {
  description = "Permissions that the service principal has for accessing keys from keyvault"
  type        = list(string)
  default     = ["Create", "Delete", "Get", "List", "Purge"]
}

variable "secret_permissions" {
  description = "Permissions that the service principal has for accessing secrets from keyvault"
  type        = list(string)
  default     = ["Set", "Delete", "Get", "List", "Purge"]
}

variable "certificate_permissions" {
  description = "Permissions that the service principal has for accessing certificates from keyvault"
  type        = list(string)
  default     = ["Create", "Delete", "Get", "List", "Purge"]
}

variable "secrets" {
  type        = map(string)
  description = "A map of secrets for the Key Vault."
  default     = {}
}

variable "subnet_id_whitelist" {
  description = "If supplied this represents the subnet IDs that should be allowed to access this resource"
  type        = list(string)
  default     = []
}

variable "resource_ip_whitelist" {
  description = "A list of IPs and/or IP ranges that should have access to the provisioned keyvault"
  type        = list(string)
  default     = []
}
