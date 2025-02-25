# variable "region_id" {
#   type          = string
#   description   = "region_id"
#   nullable      = false 
# }

variable "az_name" {
  type          = string
  description   = "az_name"
  nullable      = false 
  default       = "default"
}

variable "project_id" {
  type          = string
  description   = "project_id"
  nullable      = false
  default       = "0"
}

variable "instance_name" {
  type          = string
  description   = "instance_name"
  nullable      = false 
}

variable "display_name" {
  type          = string
  description   = "display_name"
  nullable      = false 
}

variable "flavor_id" {
  type          = string
  description   = "flavor_id"
  nullable      = false 
}

variable "image_type" {
  type          = number
  description   = "image_type"
  nullable      = false 
}

variable "image_id" {
  type          = string
  description   = "image_type"
  nullable      = false 
}

variable "vpc_id" {
  type          = string
  description   = "vpc_id"
  nullable      = false 
}

variable "network_card_list" {
  type          = list(object({
    subnet_id    = string
    is_master    = optional(bool,true)
    nic_name     = optional(string)
    fixed_ip     = optional(string)
    share_vpc_id = optional(string)
    ipv4_address = optional(string)
    ipv6_address = optional(string)
  }))
  description   = "network_card_list"
  nullable      = false
}

//variable "network_card_list" {
//  type          = object({
//    network_card_list_inter = list(object({
//      subnet_id    = string
//      is_master    = optional(bool,true)
//      nic_name     = optional(string)
//      fixed_ip     = optional(string)
//      share_vpc_id = optional(string)
//      ipv4_address = optional(string)
//      ipv6_address = optional(string)
//    }))
//  })
//  description   = "network_card_list"
//  nullable      = false
//}
variable "ext_ip" {
  type          = string
  description   = "ext_ip"
  nullable      = false
}

variable "boot_disk_type" {
  type          = string
  description   = "boot_disk_type"
  nullable      = false
}

variable "boot_disk_size" {
  type          = number
  description   = "boot_disk_size"
  nullable      = false 
}


variable "zone" {
  type          = string
  description   = "zone"
  nullable      = true
  default       = null
}

variable "sec_group_list" {
  type          = set(string)
  description   = "sec_group_list"
  nullable      = true
  default       = null
}

variable "data_disk_list" {
  type          = object({
    data_disk_list_inter = list(object({
      disk_size  = number
      disk_type  = string
      disk_id    = optional(string, "")
      cmk_id     = optional(string, "")
      disk_name  = optional(string, "")
      is_encrypt = optional(bool, false)
    }))
  })
  description   = "data_disk_list"
  nullable      = true
  default       = null
}


variable "ip_version" {
  type          = string
  description   = "ip_version"
  nullable      = true
  default       = null
}

variable "bandwidth" {
  type          = number
  description   = "bandwidth"
  nullable      = true
  default       = 0
}

variable "eip_id" {
  type          = string
  description   = "eip_id"
  nullable      = true
  default       = null
}

variable "affinity_group_id" {
  type          = string
  description   = "affinity_group_id"
  nullable      = true
  default       = null
}

variable "key_pair_id" {
  type          = string
  description   = "key_pair_id"
  nullable      = true
  default       = null
}

variable "user_password" {
  type          = string
  description   = "user_password"
  nullable      = true
  default       = null
}

variable "user_data" {
  type          = string
  description   = "user_password"
  nullable      = true
  default       = null
}

variable "order_count" {
  type          = number
  description   = "user_password"
  nullable      = true
  default       = 1
}

# update flavor
variable "instance_id_list" {
  type          = list(string)
  description   = "instance_id_list"
  nullable      = true
  default       = null
}

# query
variable "instance_id" {
  type          = string
  description   = "规格变更時必填"
  nullable      = true
  default       = null
}

variable "flavor_series" {
  type          = string
  description   = "flavor_series"
  nullable      = true
  default       = null
}

variable "flavor_arch" {
  type          = string
  description   = "flavor_arch"
  nullable      = true
  default       = null
}

variable "flavor_ram" {
  type          = number
  description   = "flavor_ram"
  nullable      = true
  default       = 0
}

variable "flavor_cpu" {
  type          = number
  description   = "flavor_cpu"
  nullable      = true
  default       = 0
}

variable "flavor_name" {
  type          = string
  description   = "flavor_name"
  nullable      = true
  default       = null
}


variable "ak" {
  type          = string
  description   = "ak"
  nullable      = false
  default       = ""
}
variable "sk" {
  type          = string
  description   = "sk"
  nullable      = false
  default       = ""
}
variable "env" {
  type          = string
  description   = "env"
  nullable      = false
  default       = "test"
}
variable "region_id" {
  type          = string
  description   = "region_id"
  nullable      = true
  default       = null
}
variable "paas_account_id" {
  type          = string
  description   = "paas_account_id"
  nullable      = false
  default       = ""
}
variable "master_order_id" {
  type          = string
  description   = "master_order_id"
  nullable      = false
  default       = ""
}
variable "paas_resource_id" {
  type          = string
  description   = "paas_resource_id"
  nullable      = false
  default       = ""
}
variable "account_id" {
  type          = string
  description   = "account_id"
  nullable      = false
  default       = ""
}
variable "user_id" {
  type          = string
  description   = "user_id"
  nullable      = false
  default       = ""
}

