output "db_user_v1s_id" {
  description = "Map of id values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no id are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "db_user_v1s_databases" {
  description = "Map of databases values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no databases are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.databases if v.databases != null && length(v.databases) > 0 }
}
output "db_user_v1s_host" {
  description = "Map of host values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no host are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.host if v.host != null && length(v.host) > 0 }
}
output "db_user_v1s_instance_id" {
  description = "Map of instance_id values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no instance_id are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "db_user_v1s_name" {
  description = "Map of name values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no name are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "db_user_v1s_password" {
  description = "Map of password values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no password are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "db_user_v1s_region" {
  description = "Map of region values across all db_user_v1s, keyed the same as var.db_user_v1s except keys with no region are omitted"
  value       = { for k, v in openstack_db_user_v1.db_user_v1s : k => v.region if v.region != null && length(v.region) > 0 }
}

