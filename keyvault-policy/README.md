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
| certificate\_permissions | List of storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update. | `list(string)` | <pre>[<br>  "create",<br>  "delete",<br>  "get",<br>  "list"<br>]</pre> | no |
| key\_permissions | List of key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey | `list(string)` | <pre>[<br>  "create",<br>  "delete",<br>  "get",<br>  "list"<br>]</pre> | no |
| object\_ids | The object IDs of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created. | `list(string)` | n/a | yes |
| secret\_permissions | List of secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set. | `list(string)` | <pre>[<br>  "delete",<br>  "get",<br>  "set",<br>  "list"<br>]</pre> | no |
| tenant\_id | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created. | `string` | n/a | yes |
| vault\_id | Specifies the Id of the Key Vault resource. | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->
