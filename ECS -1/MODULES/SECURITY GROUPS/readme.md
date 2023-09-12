data "alicloud_images" "ubuntu" {
  most_recent = true
  name_regex  = "^ubuntu_18.*64"
}

module "ecs" {
  source  = "alibaba/ecs-instance/alicloud"

  number_of_instances = 1

  name                        = "my-ecs"
  use_num_suffix              = true
  image_id                    = ubuntu_18_04_64_20G_alibase_20190624.vhd
  instance_type               = "ecs.t5-lc2m1.nano"
  vswitch_id                  = "vsw-t4nixqlg5cp9dauqq4dgv"
  security_group_ids          = ["sg-t4n7olfprrzf6og84c64"]
  associate_public_ip_address = true
  internet_max_bandwidth_out  = 7

  key_name = "for-ecs"

  system_disk_category = "cloud_ssd"
  system_disk_size     = 40

  tags = {
    Created      = "Terraform"
    Environment = "dev"
  }
}