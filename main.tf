data "oci_cloud_migrations_migrations" "cloud_migrations_migrations_lookup" {
  for_each = var.cloud_migrations_migrations_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  migration_id   = each.value.migration_id
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

