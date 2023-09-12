
variable "VPC-enable" {
    description = "Enable VPC creation of nor"
    type = bool
}

variable "vpc-cidr" {
    description = "VPC CIDR"
    type = string
}

variable "dns_hostnames" {
    description = "Enable of Disbale DNS_hostnames"
    type = bool
}

variable "dns_support" {
    description = "Enable of Disbale DNS_Support"
    type = bool
}

variable "vpc_id" {
  description = "ID of the VPC where to create security group"
  type        = string
  default     = ""
}

variable "security_group_type" {
  description = "The type of the security group. Valid values: 'normal'(basic security group.), 'enterprise'(advanced security group For more information.). Default to 'normal'."
  type        = string
  default     = "normal"
}

variable "group_name" {
  description = "(Deprecated) It has been deprecated from 2.0.0 and use 'name' instead."
  type        = string
  default     = ""
}

variable "resource_group_id" {
  description = "Id of Resource group"
  type        = string
  default     = null
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "ecs.t5-lc2m1.nano"
}

variable "instance_name" {
  description = "The specification of module name."
  type        = string
  default     = "ecs"
}

