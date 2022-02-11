# Module keyvault-policy

A terraform module that manage key vault permissions and policies for a specified list of resource identifiers in Azure with the following characteristics:

- Creates new key vault access policy(s) for a specified set of azure resources: `[object_ids]`, `tenant_id`.

- Access policy permissions are configurable: `keyvault_key_permissions`, `keyvault_secret_permissions` and `keyvault_certificate_permissions`.


<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| certificate\_permissions | List of certificate permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, DeleteIssuers, Get, GetIssuers, Import, List, ListIssuers, ManageContacts, Manag Issuers, Purge, Recover, Restore, SetIssuers and Update. | `list(string)` | <pre>[<br>  "Create",<br>  "Delete",<br>  "Get",<br>  "List"<br>]</pre> | no |
| key\_permissions | List of key permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, PUrge, Recover, Restore, Sign, UnwrapKey, Update, Verify and WrapKey | `list(string)` | <pre>[<br>  "Create",<br>  "Delete",<br>  "Get",<br>  "List"<br>]</pre> | no |
| object\_ids | The object IDs of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created. | `list(string)` | n/a | yes |
| secret\_permissions | List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set. | `list(string)` | <pre>[<br>  "Delete",<br>  "Get",<br>  "Set",<br>  "List"<br>]</pre> | no |
| storage\_permissions | List of storage permissions, must be one or more from the following: Backup, Delete, DeleteSAS, Get, GetSAS, List, ListSAS, Purge, Recover, RegenerateKey, Restore, Set, SetSAS and Update. | `list(string)` | `[]` | no |
| tenant\_id | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created. | `string` | n/a | yes |
| vault\_id | Specifies the Id of the Key Vault resource. | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->
