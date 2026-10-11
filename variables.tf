variable "db_user_v1s" {
  description = <<EOT
Map of db_user_v1s, attributes below
Required:
    - instance_id
    - name
    - password
Optional:
    - databases
    - host
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance_id = string
    name        = string
    password    = string
    databases   = optional(set(string))
    host        = optional(string)
    region      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

