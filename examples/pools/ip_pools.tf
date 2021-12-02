#____________________________________________________________
#
# Example Intersight Pool Module
# GUI Location: Pools > Create Pool
#____________________________________________________________

#______________________________________________
#
# Example with IPv4 and IPv6
#______________________________________________

module "ip_pool_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/ip_pools"
  assignment_order = "sequential"
  description      = "IP Pool 1 Example."
  name             = "ip_pool_1"
  org_moid         = local.org_moid
  tags             = var.tags
  ipv4_blocks = {
    "0" = {
      from = "198.18.1.32"
      size = 32
      # to   = "198.18.1.63"
    },
    "1" = {
      from = "198.18.1.64"
      size = 32
      # to   = "198.18.1.95"
    }
  }
  ipv4_config = {
    "config" = {
      gateway       = "198.18.1.1"
      netmask       = "255.255.255.0"
      primary_dns   = "198.18.1.10"
      secondary_dns = "198.18.1.11"
    }
  }
  ipv6_blocks = {
    "0" = {
      from = "2001:002:1::32"
      size = 32
      # to   = "2001:002:1::63"
    }
  }
  ipv6_config = {
    "config" = {
      gateway       = "2001:002:1::1"
      prefix        = 64
      primary_dns   = "2001:002:1::10"
      secondary_dns = "2001:002:1::11"
    }
  }
}


#______________________________________________
#
# Example with only IPv4
#______________________________________________

module "ip_pool_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/ip_pools"
  version          = ">=0.9.6"
  assignment_order = "sequential"
  description      = "IP Pool 2 Example."
  name             = "ip_pool_2"
  org_moid         = local.org_moid
  tags             = var.tags
  ipv4_blocks = {
    "0" = {
      from = "198.18.2.32"
      size = 32
      # to   = "198.18.2.63"
    }
  }
  ipv4_config = {
    "config" = {
      gateway       = "198.18.2.1"
      netmask       = "255.255.255.0"
      primary_dns   = "198.18.1.10"
      secondary_dns = "198.18.1.11"
    }
  }
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "ip_pool_default" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/ip_pools"
  assignment_order    = "default"
  description         = ""
  name                = "default"
  org_moid            = local.org_moid
  tags                = var.tags
  ipv4_blocks         = {}
  ipv4_config         = {}
  ipv6_blocks         = {}
  ipv6_config         = {}
}

*/
