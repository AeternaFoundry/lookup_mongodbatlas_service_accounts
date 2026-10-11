variable "service_accounts_lookup" {
  description = <<EOT
Map of service_accounts_lookup, attributes below
Required:
    - org_id
Optional:
    - include_system_managed
EOT

  type = map(object({
    org_id                 = string
    include_system_managed = optional(bool)
  }))
}

