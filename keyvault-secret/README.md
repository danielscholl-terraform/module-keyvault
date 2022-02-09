# Module keyvault-secret

A terraform module to provide Key Vaults secrets for existing Key Vaults in Azure with the following characteristics:

- Secrets have a name that identifies them in the URL/ID
- Secrets have a secret value that gets encrypted and protected by the key vault


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
| keyvault\_id | Id of the Key Vault to store the secret in. | `string` | n/a | yes |
| secrets | Key/value pair of keyvault secret names and corresponding secret value. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| references | A mapping of Key Vault references for App Service and Azure Functions. |
| secrets | A mapping of secret names and URIs. |

<!--- END_TF_DOCS --->
