#____________________________________________________________
#
# Example Intersight System QoS Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "system_qos_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/domain_system_qos"
  description = "System QoS Default Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles = [
    {
      moid        = module.switch_profile_example_a.moid
      object_type = "fabric.SwitchProfile"
    },
    {
      moid        = module.switch_profile_example_b.moid
      object_type = "fabric.SwitchProfile"
    },
  ]
  tags    = var.tags
  classes = []
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "system_qos_default" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source       = "terraform-cisco-modules/imm/intersight//modules/domain_system_qos"
  description  = "System QoS Default Example."
  name         = "system_qos_default"
  org_moid     = local.org_moid
  profiles     = var.profiles
  tags         = var.tags
  classes      = [
    {
      admin_state         = "Disabled"
      bandwidth_percent   = 0
      cos                 = 5
      mtu                 = 1500
      multicast_optimize  = false
      name                = "Platinum"
      packet_drop         = true
      weight              = 10
    },
    {
      admin_state         = "Disabled"
      bandwidth_percent   = 0
      cos                 = 4
      mtu                 = 1500
      multicast_optimize  = false
      name                = "Gold"
      packet_drop         = true
      weight              = 9
    },
    {
      admin_state         = "Disabled"
      bandwidth_percent   = 0
      cos                 = 2
      mtu                 = 1500
      multicast_optimize  = false
      name                = "Silver"
      packet_drop         = true
      weight              = 8
    },
    {
      admin_state         = "Disabled"
      bandwidth_percent   = 0
      cos                 = 1
      mtu                 = 1500
      multicast_optimize  = false
      name                = "Bronze"
      packet_drop         = true
      weight              = 7
    },
    {
      admin_state         = "Enabled"
      bandwidth_percent   = 50
      cos                 = 255
      mtu                 = 1500
      multicast_optimize  = false
      name                = "Best Effort"
      packet_drop         = null
      weight              = 5
    },
    {
      admin_state         = "Enabled"
      bandwidth_percent   = 50
      cos                 = 3
      mtu                 = 2240
      multicast_optimize  = null
      name                = "FC"
      packet_drop         = false
      weight              = 5
    },
  ]
}

*/
