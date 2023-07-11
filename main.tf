resource "azuredevops_variable_group" "main" {
  project_id   = var.project_id
  name         = var.name
  description  = var.description
  allow_access = var.allow_access

  dynamic "variable" {
    for_each = var.variables

    content {
      name         = variable.value["name"]
      value        = variable.value["value"]
      is_secret    = variable.value["is_secret"]
      secret_value = variable.value["secret_value"]
    }
  }
}