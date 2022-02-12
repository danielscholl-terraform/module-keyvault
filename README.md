# Module Azure Key Vault

Module for creating and managing an Azure Key Vaults.

## Usage

```
module "resource_group" {
  source = "git::https://github.com/danielscholl-terraform/module-resource-group?ref=v1.0.0"

  name     = "iac-terraform"
  location = "eastus2"

  resource_tags          = {
    environment = "test-environment"
  }
}


module "keyvault" {
  source = "git::https://github.com/danielscholl-terraform/module-keyvault?ref=v1.0.0"
  depends_on = [module.resource_group]

  name                = substr("iacterraform${module.resource_group.random}", 0, 23)
  resource_group_name = module.resource_group.name
}

module "keyvault_secret" {
  source = "git::https://github.com/danielscholl-terraform/module-keyvault//keyvault-secret?ref=v1.0.0"
  depends_on = [module.keyvault]

  keyvault_id = module.keyvault.id
  secrets = {
    "iac" : "terraform"
  }
}


```

<!--- BEGIN_TF_DOCS --->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.90.0 |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| certificate\_permissions | Permissions that the service principal has for accessing certificates from keyvault | `list(string)` | <pre>[<br>  "Create",<br>  "Delete",<br>  "Get",<br>  "List",<br>  "Purge"<br>]</pre> | no |
| key\_permissions | Permissions that the service principal has for accessing keys from keyvault | `list(string)` | <pre>[<br>  "Create",<br>  "Delete",<br>  "Get",<br>  "List",<br>  "Purge"<br>]</pre> | no |
| name | Name of the keyvault to create | `string` | n/a | yes |
| names | Names to be applied to resources (inclusive) | <pre>object({<br>    environment = string<br>    location    = string<br>    product     = string<br>  })</pre> | <pre>{<br>  "environment": "tf",<br>  "location": "eastus2",<br>  "product": "iac"<br>}</pre> | no |
| resource\_group\_name | The name of the resource group in which the resources will be created | `string` | n/a | yes |
| resource\_ip\_whitelist | A list of IPs and/or IP ranges that should have access to the provisioned keyvault | `list(string)` | `[]` | no |
| resource\_tags | Map of tags to apply to taggable resources in this module. By default the taggable resources are tagged with the name defined above and this map is merged in | `map(string)` | `{}` | no |
| secret\_permissions | Permissions that the service principal has for accessing secrets from keyvault | `list(string)` | <pre>[<br>  "Set",<br>  "Delete",<br>  "Get",<br>  "List",<br>  "Purge"<br>]</pre> | no |
| secrets | A map of secrets for the Key Vault. | `map(string)` | `{}` | no |
| sku | SKU of the keyvault to create | `string` | `"standard"` | no |
| subnet\_id\_whitelist | If supplied this represents the subnet IDs that should be allowed to access this resource | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The id of the Keyvault |
| name | The name of the Keyvault |
| references | A mapping of Key Vault references for App Service and Azure Functions. |
| secrets | A mapping of secret names and URIs. |
| uri | The uri of the keyvault |
<!--- END_TF_DOCS --->
