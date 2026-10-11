variable "securityhub_configuration_policy_associations" {
  description = <<EOT
Map of securityhub_configuration_policy_associations, attributes below
Required:
    - policy_id
    - target_id
Optional:
    - region
EOT

  type = map(object({
    policy_id = string
    target_id = string
    region    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.securityhub_configuration_policy_associations : (
        (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.policy_id))) || (contains(["SELF_MANAGED_SECURITY_HUB"], v.policy_id))
      )
    ])
    error_message = "any of: must be a valid UUID; must be one of: SELF_MANAGED_SECURITY_HUB"
  }
  validation {
    condition = alltrue([
      for k, v in var.securityhub_configuration_policy_associations : (
        can(regex("^(r-[a-z0-9]{4,32})$|^(ou-[a-z0-9]{4,32}-[a-z0-9]{8,32})$|^([0-9]{12})$", v.target_id))
      )
    ])
    error_message = "Target ID must be a valid root, organizational unit or account id."
  }
}

