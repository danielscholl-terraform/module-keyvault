# Module keyvault-policy

A terraform module that manage key vault permissions and policies for a specified list of resource identifiers in Azure with the following characteristics:

- Creates new key vault access policy(s) for a specified set of azure resources: `[object_ids]`, `tenant_id`.

- Access policy permissions are configurable: `keyvault_key_permissions`, `keyvault_secret_permissions` and `keyvault_certificate_permissions`.


<!--- BEGIN_TF_DOCS --->

<!--- END_TF_DOCS --->
