terraform {
  required_version = ">=1.0.0"
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.9"
    }
  }
}

provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}

data "intersight_organization_organization" "organization" {
  name = "Wakanda"
}
# print default org moid
output "org_default_moid" {
  value = data.intersight_organization_organization.default.moid
}

module "intersight_policy_bundle" {
  source = "terraform-cisco-modules/policy-bundle/intersight"

  # external sources
  organization    = data.intersight_organization_organization.default.id
  vnic_mac_pool   = var.mac_pool_moid
  imc_access_pool = var.ip_pool_moid

  # every policy created will have this prefix in its name
  policy_prefix = "asgard"
  description   = "Created by Terraform"

  # Fabric Interconnect 6454 config specifics
  server_ports = [17, 18, 19, 20]
  port_channel = [49, 50]
  uplink_vlans = {
    "vlan1020" : 1020,
    "vlan1021" : 1021
  }

  # How Many Ports should be Assigned as FC Ports
  fc_port_count = 4

  imc_access_vlan    = 1020
  imc_admin_password = var.imc_password

  ntp_servers = ["10.101.128.15", "10.101.128.16"]

  dns_preferred = "10.101.128.15"
  dns_alternate = "10.101.128.16"

  ntp_timezone = "America/New_York"

  tags = [
    { "key" : "location", "value" : "Asgard" },
    { "key" : "orchestrator", "value" : "terraform" }
  ]
}
