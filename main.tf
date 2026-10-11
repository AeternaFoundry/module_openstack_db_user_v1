resource "openstack_db_user_v1" "db_user_v1s" {
  for_each = var.db_user_v1s

  instance_id = each.value.instance_id
  name        = each.value.name
  password    = each.value.password
  databases   = each.value.databases
  host        = each.value.host
  region      = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

