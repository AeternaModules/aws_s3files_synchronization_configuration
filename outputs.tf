output "s3files_synchronization_configurations_expiration_data_rule" {
  description = "Map of expiration_data_rule values across all s3files_synchronization_configurations, keyed the same as var.s3files_synchronization_configurations"
  value       = { for k, v in aws_s3files_synchronization_configuration.s3files_synchronization_configurations : k => v.expiration_data_rule if v.expiration_data_rule != null && length(v.expiration_data_rule) > 0 }
}
output "s3files_synchronization_configurations_file_system_id" {
  description = "Map of file_system_id values across all s3files_synchronization_configurations, keyed the same as var.s3files_synchronization_configurations"
  value       = { for k, v in aws_s3files_synchronization_configuration.s3files_synchronization_configurations : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "s3files_synchronization_configurations_import_data_rule" {
  description = "Map of import_data_rule values across all s3files_synchronization_configurations, keyed the same as var.s3files_synchronization_configurations"
  value       = { for k, v in aws_s3files_synchronization_configuration.s3files_synchronization_configurations : k => v.import_data_rule if v.import_data_rule != null && length(v.import_data_rule) > 0 }
}
output "s3files_synchronization_configurations_latest_version_number" {
  description = "Map of latest_version_number values across all s3files_synchronization_configurations, keyed the same as var.s3files_synchronization_configurations"
  value       = { for k, v in aws_s3files_synchronization_configuration.s3files_synchronization_configurations : k => v.latest_version_number if v.latest_version_number != null }
}
output "s3files_synchronization_configurations_region" {
  description = "Map of region values across all s3files_synchronization_configurations, keyed the same as var.s3files_synchronization_configurations"
  value       = { for k, v in aws_s3files_synchronization_configuration.s3files_synchronization_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

