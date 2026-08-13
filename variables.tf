variable "s3files_synchronization_configurations" {
  description = <<EOT
Map of s3files_synchronization_configurations, attributes below
Required:
    - file_system_id
Optional:
    - latest_version_number
    - region
    - expiration_data_rule (block):
        - days_after_last_access (required)
    - import_data_rule (block):
        - prefix (required)
        - size_less_than (required)
        - trigger (required)
EOT

  type = map(object({
    file_system_id        = string
    latest_version_number = optional(number)
    region                = optional(string)
    expiration_data_rule = optional(list(object({
      days_after_last_access = number
    })))
    import_data_rule = optional(list(object({
      prefix         = string
      size_less_than = number
      trigger        = string
    })))
  }))
}

