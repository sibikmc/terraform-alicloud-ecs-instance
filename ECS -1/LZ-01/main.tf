# This module would call the each corresponding module 


module "security_group" {
  source = "../MODULES/SECURITY GROUPS"
  name                = var.group_name
  vpc_id              = var.vpc_id
  security_group_type = var.security_group_type
  resource_group_id   = var.resource_group_id
}

module "ecs" {
  source = "../MODULES/Ecs"
  name = var.instance_name
  instance_type              = var.instance_type
  image_id                   = var.image_id
  system_disk_category       = var.system_disk_category
}