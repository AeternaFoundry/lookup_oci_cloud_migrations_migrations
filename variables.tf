variable "cloud_migrations_migrations_lookup" {
  description = <<EOT
Map of cloud_migrations_migrations_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - migration_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    migration_id   = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

