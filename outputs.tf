output "securityhub_configuration_policy_associations_id" {
  description = "Map of id values across all securityhub_configuration_policy_associations, keyed the same as var.securityhub_configuration_policy_associations"
  value       = { for k, v in aws_securityhub_configuration_policy_association.securityhub_configuration_policy_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityhub_configuration_policy_associations_policy_id" {
  description = "Map of policy_id values across all securityhub_configuration_policy_associations, keyed the same as var.securityhub_configuration_policy_associations"
  value       = { for k, v in aws_securityhub_configuration_policy_association.securityhub_configuration_policy_associations : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "securityhub_configuration_policy_associations_region" {
  description = "Map of region values across all securityhub_configuration_policy_associations, keyed the same as var.securityhub_configuration_policy_associations"
  value       = { for k, v in aws_securityhub_configuration_policy_association.securityhub_configuration_policy_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securityhub_configuration_policy_associations_target_id" {
  description = "Map of target_id values across all securityhub_configuration_policy_associations, keyed the same as var.securityhub_configuration_policy_associations"
  value       = { for k, v in aws_securityhub_configuration_policy_association.securityhub_configuration_policy_associations : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}

