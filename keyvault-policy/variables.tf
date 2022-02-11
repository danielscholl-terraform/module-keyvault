##############################################################
# This module allows the creation of a Key Vault Policy
##############################################################

variable "vault_id" {
  description = "Specifies the Id of the Key Vault resource."
  type        = string
}

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created."
  type        = string
}

variable "object_ids" {
  description = "The object IDs of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created."
  type        = list(string)
}

variable "key_permissions" {
  description = "List of key permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, PUrge, Recover, Restore, Sign, UnwrapKey, Update, Verify and WrapKey"
  type        = list(string)
  default     = ["Create", "Delete", "Get", "List"]
}

variable "secret_permissions" {
  type        = list(string)
  description = "List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set."
  default     = ["Delete", "Get", "Set", "List"]
}

variable "certificate_permissions" {
  type        = list(string)
  description = "List of certificate permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, DeleteIssuers, Get, GetIssuers, Import, List, ListIssuers, ManageContacts, Manag Issuers, Purge, Recover, Restore, SetIssuers and Update."
  default     = ["Create", "Delete", "Get", "List"]
}

variable "storage_permissions" {
  type        = list(string)
  description = "List of storage permissions, must be one or more from the following: Backup, Delete, DeleteSAS, Get, GetSAS, List, ListSAS, Purge, Recover, RegenerateKey, Restore, Set, SetSAS and Update."
  default     = []
}
