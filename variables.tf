variable "project_id" {
  description = "Azure DevOps Project ID"
  type        = string
}

variable "name" {
  description = "The name of the Variable Group."
  type        = string
}

variable "description" {
  description = "The description of the Variable Group. Defaults to Managed by Terraform."
  type        = string
  default     = "Managed by Terraform"
}

variable "allow_access" {
  description = "Boolean that indicate if this variable group is shared by all pipelines of this project."
  type        = bool
  default     = true
}

variable "variables" {
  description = <<EOF
  <br><b>name:</b> The key value used for the variable. Must be unique within the Variable Group.
  <br><b>value:</b> The value of the variable. If omitted, it will default to empty string.
  <br><b>is_secret:</b> A boolean flag describing if the variable value is sensitive. Defaults to false.
  <br><b>secret_value:</b> The secret value of the variable. If omitted, it will default to empty string. Used when is_secret set to true.
EOF
  type        = list(object({
    name         = string
    value        = optional(string)
    is_secret    = optional(bool, false)
    secret_value = optional(string)
  }))
}