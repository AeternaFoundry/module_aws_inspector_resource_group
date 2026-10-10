output "inspector_resource_groups_id" {
  description = "Map of id values across all inspector_resource_groups, keyed the same as var.inspector_resource_groups"
  value       = { for k, v in aws_inspector_resource_group.inspector_resource_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "inspector_resource_groups_arn" {
  description = "Map of arn values across all inspector_resource_groups, keyed the same as var.inspector_resource_groups"
  value       = { for k, v in aws_inspector_resource_group.inspector_resource_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "inspector_resource_groups_region" {
  description = "Map of region values across all inspector_resource_groups, keyed the same as var.inspector_resource_groups"
  value       = { for k, v in aws_inspector_resource_group.inspector_resource_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "inspector_resource_groups_tags" {
  description = "Map of tags values across all inspector_resource_groups, keyed the same as var.inspector_resource_groups"
  value       = { for k, v in aws_inspector_resource_group.inspector_resource_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

