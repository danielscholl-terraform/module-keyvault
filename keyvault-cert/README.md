# keyvault-cert

A terraform module to provide certificate to a target key vault instance in Azure with the following characteristics:

- Ability to import an existing certificate file into a specified key vault instance. This feature is enabled through the `key_vault_cert_import_filepath` configuration.
- Generate a self signed certificate when provided the key subject alternative names and a CN subject: `key_vault_cert_alt_names`, `key_vault_cert_subject`. The generated certificate is imported to the target key vault: `keyvault_name`. Self signed certificates should only be used for development purposes.
- Generated certificate type defaults to `application/x-pkcs12`. This is configurable through `key_vault_content_type`.
- The certificate expiration policy is configurable through `key_vault_cert_validity_months` and `key_vault_cert_days_before_expiry`. Defaults to `12` and `30`.
- Private and public certificate contents are exposed as sensitive output secrets: `private_pfx` and `public_cert`. This is required for binding the imported certificate to azure managed services like App Gateway for SSL termination.


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
| cert\_import\_filepath | The base64-encoded certificate file path. Changing this forces a new resource to be created. | `string` | n/a | yes |
| cert\_name | Name of the certifacte to create | `string` | `"pfx-certificate"` | no |
| content\_type | The Content-Type of the Certificate, such as application/x-pkcs12 for a PFX or application/x-pem-file for a PEM. Changing this forces a new resource to be created. | `string` | `"application/x-pkcs12"` | no |
| keyvault\_id | The id of the Key Vault where the Certificate should be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cert\_name | n/a |
| secret\_id | n/a |

<!--- END_TF_DOCS --->
