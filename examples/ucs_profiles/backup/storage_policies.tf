#____________________________________________________________
#
# Example Intersight Storage Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "storage_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.disk_group_example_raid5
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/storage_policies"
  description   = "Storage Policy Example."
  name          = "example"
  org_moid      = local.org_moid
  profiles      = []
  retain_policy = true
  tags          = var.tags
  unused_disks  = "UnconfiguredGood"
  virtual_drives = [
    {
      access_policy         = "Default"
      additional_properties = ""
      boot_drive            = false
      disk_group_name       = module.disk_group_example_raid5.name
      disk_group_policy     = module.disk_group_example_raid5.moid
      drive_cache           = "Default"
      expand_to_available   = true
      io_policy             = "Default"
      name                  = "vd0"
      read_policy           = "Default"
      size                  = 25
      strip_size            = "Default"
      vdid                  = "value"
      write_policy          = "Default"
    }
  ]
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vmedia_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/storage_policies"
  description   = ""
  name          = "storage"
  org_moid      = local.org_moid
  profiles      = []
  retain_policy = true
  tags          = var.tags
  unused_disks  = "UnconfiguredGood"
  virtual_drives = []
}

*/
