# keyvault-cert

A terraform module to provide certificate to a target key vault instance in Azure with the following characteristics:

- Ability to import an existing certificate file into a specified key vault instance. This feature is enabled through the `key_vault_cert_import_filepath` configuration.
- Generate a self signed certificate when provided the key subject alternative names and a CN subject: `key_vault_cert_alt_names`, `key_vault_cert_subject`. The generated certificate is imported to the target key vault: `keyvault_name`. Self signed certificates should only be used for development purposes.
- Generated certificate type defaults to `application/x-pkcs12`. This is configurable through `key_vault_content_type`.
- The certificate expiration policy is configurable through `key_vault_cert_validity_months` and `key_vault_cert_days_before_expiry`. Defaults to `12` and `30`.
- Private and public certificate contents are exposed as sensitive output secrets: `private_pfx` and `public_cert`. This is required for binding the imported certificate to azure managed services like App Gateway for SSL termination.


<!--- BEGIN_TF_DOCS --->

<!--- END_TF_DOCS --->
