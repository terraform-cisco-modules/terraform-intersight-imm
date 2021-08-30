#____________________________________________________________
#
# Example Intersight Disk Group Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "disk_group_example_raid1" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/disk_group_policies"
  description = "Disk Group Policy Example for Raid 1."
  name        = "example_raid1"
  raid_level  = "Raid1"
  use_jbods   = true
  org_moid    = local.org_moid
  tags        = var.tags
  # The default var.span_groups included disk 1 and 2
  # which will work for this.
}

module "disk_group_example_raid5" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/disk_group_policies"
  description = "Disk Group Policy Example for Raid 5."
  name        = "example_raid5"
  raid_level  = "Raid5"
  use_jbods   = true
  org_moid    = local.org_moid
  tags        = var.tags
  span_groups = {
    span_0 = [
      {
        disk = 1
      },
      {
        disk = 2
      },
      {
        disk = 3
      }
    ]
  }
}

module "disk_group_example_raid10" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/disk_group_policies"
  description = "Disk Group Policy Example for Raid 10 with Hot Spares."
  name        = "example_raid10"
  raid_level  = "Raid10"
  use_jbods   = true
  org_moid    = local.org_moid
  tags        = var.tags
  span_groups = {
    span_0 = [
      {
        disk = 1
      },
      {
        disk = 2
      }
    ],
    span_1 = [
      {
        disk = 3
      },
      {
        disk = 4
      }
    ]
  }
  hot_spares = [8, 9]
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "sd_card_defaults" {
  depends_on  = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/disk_group_policies"
  description = ""
  name        = "sd_card"
  profiles    = var.profiles
  org_moid    = local.org_moid
  tags        = var.tags
  partitions  = []
}

*/
