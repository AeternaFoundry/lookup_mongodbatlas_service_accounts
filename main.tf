data "mongodbatlas_service_accounts" "service_accounts_lookup" {
  for_each = var.service_accounts_lookup

  org_id                 = each.value.org_id
  include_system_managed = each.value.include_system_managed
}

