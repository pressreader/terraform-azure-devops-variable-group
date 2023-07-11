# Azure DevOps Variable Group Terraform module

Terraform module which creates Variable Group in Azure DevOps

## Usage

```terraform
module "variable_group" {
  source = "git::https://github.com/pressreader/terraform-azure-devops-variable-group.git?ref=v1.0.0"

  project_id = "ID of a project"

  name         = "Name of a variable group"
  description  = "Description of the variable group" # Defaults to Managed by Terraform
  allow_access = true                                # Defaults to true

  variables = [
    {
      name         = "Name"
      value        = "Value"
      is_secret    = false          # Defaults to false.
      secret_value = "Secret Value" # Defaults to null
    }
  ]
}
```