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
  source           = "terraform-cisco-modules/imm/intersight//modules/ip_pools"
  assignment_order = "sequential"
  description      = "IP Pool 1 Example."
  dns_servers_v4   = var.dns_servers_v4
  dns_servers_v6   = var.dns_servers_v6
  name             = "ip_pool_1"
  org_moid         = local.org_moid
  tags             = var.tags
  ipv4_block = [
    {
      from = "198.18.1.32"
      to   = "198.18.1.63"
    },
    {
      from = "198.18.1.64"
      to   = "198.18.1.95"
    }
  ]
  ipv4_config = [
    {
      gateway = "198.18.1.1"
      netmask = "255.255.255.0"
    }
  ]
  ipv6_block = [
    {
      from = "2001:002:1::32"
      size = 31
      # to   = "2001:002:1::63"
    }
  ]
  ipv6_config = [
    {
      gateway = "2001:002:1::1"
      prefix  = 64
    }
  ]
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
  assignment_order = "sequential"
  description      = "IP Pool 2 Example."
  dns_servers_v4   = var.dns_servers_v4
  name             = "ip_pool_2"
  org_moid         = local.org_moid
  tags             = var.tags
  ipv4_block = [
    {
      from = "198.18.2.32"
      to   = "198.18.2.63"
    }
  ]
  ipv4_config = [
    {
      gateway = "198.18.2.1"
      netmask = "255.255.255.0"
    }
  ]
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
  dns_servers_v4      = var.dns_servers_v4
  dns_servers_v6      = var.dns_servers_v6
  name                = "default"
  org_moid            = local.org_moid
  tags                = var.tags
  ipv4_block          = []
  ipv4_config         = []
  ipv6_block          = []
  ipv6_config         = []
}

*/
