output "service_accounts_lookup_include_system_managed" {
  description = "Map of include_system_managed values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no include_system_managed are omitted"
  value       = { for k, v in data.mongodbatlas_service_accounts.service_accounts_lookup : k => v.include_system_managed if v.include_system_managed != null }
}
output "service_accounts_lookup_org_id" {
  description = "Map of org_id values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.mongodbatlas_service_accounts.service_accounts_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "service_accounts_lookup_results" {
  description = "Map of results values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_service_accounts.service_accounts_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

