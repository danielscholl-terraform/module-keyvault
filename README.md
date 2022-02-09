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
```

<!--- BEGIN_TF_DOCS --->

<!--- END_TF_DOCS --->
