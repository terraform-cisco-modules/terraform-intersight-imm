#_______________________________________________________________
#
# Example Intersight Network Connectivity Policy Module
# GUI Location: Policies > Create Policy > Network Connectivity
#_______________________________________________________________

module "dns_example_1" {
  depends_on = [
    module.ucs_domain_profile_a_example,
    module.ucs_domain_profile_b_example
  ]
  version        = ">=0.9.6"
  source         = "terraform-cisco-modules/imm/intersight//modules/network_connectivity_policies"
  description    = "Network Connectivity (DNS) Policy Example."
  dns_servers_v4 = var.dns_servers_v4
  name           = "example_1"
  org_moid       = local.org_moid
  profile_type   = "domain"
  profiles       = {}
  tags           = var.tags
  update_domain  = "example.com"
}

module "dns_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version        = ">=0.9.6"
  source         = "terraform-cisco-modules/imm/intersight//modules/network_connectivity_policies"
  description    = "Network Connectivity (DNS) Policy Example with IPv6."
  dns_servers_v4 = var.dns_servers_v4
  dns_servers_v6 = var.dns_servers_v6
  ipv6_enable    = true
  name           = "example_2"
  org_moid       = local.org_moid
  profiles       = {}
  tags           = var.tags
  update_domain  = "example.com"
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "dns_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source         = "terraform-cisco-modules/imm/intersight//modules/network_connectivity_policies"
  description    = ""
  dns_servers_v4 = var.dns_servers_v4
  dns_servers_v6 = var.dns_servers_v6
  dynamic_dns    = false
  ipv6_enable    = false
  name           = "dns"
  org_moid       = local.org_moid
  profiles       = []
  tags           = var.tags
  update_domain  = ""
}

*/
