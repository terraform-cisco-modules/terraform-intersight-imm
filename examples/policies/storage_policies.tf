#____________________________________________________________
#
# Examples Intersight Storage Policy Module
# GUI Location: Policies > Create Policy > Storage
#____________________________________________________________

module "basic_storage_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
  ]
  source                   = "../../../modules/storage_policies"
  description              = "Storage Policy Example."
  name                     = "basic_example"
  org_moid                 = local.org_moid
  raid0_drive              = []
  profiles                 = []
  tags                     = var.tags
  unused_disks_state       = "UnconfiguredGood"
  use_jbod_for_vd_creation = true
  m2_virtual_drive         = []
}

module "m2_storage_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
  ]
  source                   = "../../../modules/storage_policies"
  description              = "Storage Policy Example."
  name                     = "m2_example"
  org_moid                 = local.org_moid
  profiles                 = []
  raid0_drive              = []
  tags                     = var.tags
  unused_disks_state       = "UnconfiguredGood"
  use_jbod_for_vd_creation = true
  m2_virtual_drive = [
    {
      controller_slot = "MSTOR-RAID-1,MSTOR-RAID-2"
      enable          = true
    }
  ]
}

#______________________________________________________________________________
#
# Examples Intersight Storage - Drive Group Module
# GUI Location: Policies > Create Policy > Storage > Drive Group Configuration
#______________________________________________________________________________

module "raid1_storage_example_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.basic_storage_example
  ]
  source       = "../../../modules/storage_drive_group"
  name         = "raid1_example_manual"
  raid_level   = "Raid1"
  storage_moid = module.basic_storage_example.moid
  profiles     = []
  tags         = var.tags
  manual_drive_group = [
    {
      dedicated_hot_spares = ""
      slots                = "1,2"
    }
  ]
  virtual_drives = [
    {
      access_policy       = "Default"
      boot_drive          = true
      drive_cache         = "Default"
      expand_to_available = true
      name                = "VD0"
      read_policy         = "Default"
      size                = null
      strip_size          = 64
      write_policy        = "Default"
    }
  ]
}

module "raid1_storage_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.basic_storage_example
  ]
  source       = "../../../modules/storage_drive_group"
  name         = "raid1_example_auto"
  raid_level   = "Raid1"
  storage_moid = module.basic_storage_example.moid
  profiles     = []
  tags         = var.tags
  automatic_drive_group = [
    {
      drive_type               = "SSD"
      drives_per_span          = "2"
      minimum_drive_size       = 1
      num_dedicated_hot_spares = ""
      number_of_spans          = 1
      use_remaining_drives     = false
    }
  ]
  virtual_drives = [
    {
      access_policy       = "Default"
      boot_drive          = false
      drive_cache         = "Default"
      expand_to_available = true
      name                = "VD1"
      read_policy         = "Default"
      size                = null
      strip_size          = 64
      write_policy        = "Default"
    }
  ]
}



#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "storage_policy_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                   = "terraform-cisco-modules/imm/intersight//modules/storage_policies"
  description              = ""
  global_hot_spares        = ""
  m2_virtual_drive         = []
  name                     = "storage"
  org_moid                 = " **REQUIRED - No Default** "
  profiles                 = []
  raid0_drive              = []
  tags                     = []
  unused_disks_state       = "NoChange"
  use_jbod_for_vd_creation = false
}

*/
