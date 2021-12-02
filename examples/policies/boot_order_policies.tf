#____________________________________________________________
#
# Example Intersight Boot Order Policy Module
# GUI Location: Policies > Create Policy > Boot Order
#____________________________________________________________

#______________________________________________
#
# Boot Policy Examples
#______________________________________________

module "boot_legacy_iscsi" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_mode   = "Legacy"
  description = "Legacy iSCSI Boot Example."
  name        = "example_legacy_iscsi"
  org_moid    = local.org_moid
  profiles    = {}
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = jsonencode(
        {
          InterfaceName = "iscsi-a",
          Port          = 0,
          Slot          = "MLOM"
        }
      )
      enabled     = true,
      name        = "iSCSI_A_Boot",
      object_type = "boot.Iscsi",
    },
  ]
}

module "boot_legacy_san" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_mode   = "Legacy"
  description = "Legacy SAN Boot Example."
  name        = "example_legacy_san"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = jsonencode(
        {
          InterfaceName = "vHBA-A",
          Lun           = 0,
          Slot          = "MLOM",
          Wwpn          = "20:00:00:25:B5:00:01:ff"
        }
      )
      enabled     = true,
      name        = "SAN_A_Boot",
      object_type = "boot.San",
    },
  ]
}

module "boot_uefi_cimc_dvd" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_secure = true
  description = "UEFI CIMC DVD Boot Example."
  name        = "example_uefi_cimc_dvd"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = jsonencode({ Subtype = "cimc-mapped-dvd" })
      enabled               = true,
      name                  = "CIMC_DVD",
      object_type           = "boot.VirtualMedia",
    },
  ]
}

module "boot_uefi_iscsi" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_secure = true
  description = "UEFI iSCSI Boot Example."
  name        = "example_uefi_iscsi"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = jsonencode(
        {
          Bootloader = {
            ClassId     = "boot.Bootloader"
            Description = "rhel",
            Name        = "bootx64.efi",
            ObjectType  = "boot.Bootloader"
            Path        = "\\EFI\\BOOT\\BOOTx64.EFI"
          },
          InterfaceName = "iscsi-a",
          Port          = 0,
          Slot          = "MLOM"
        }
      )
      enabled     = true,
      name        = "iSCSI_A_Boot",
      object_type = "boot.Iscsi",
    },
  ]
}

module "boot_uefi_kvm_dvd" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_secure = true
  description = "UEFI KVM DVD Boot Example."
  name        = "example_uefi_kvm_dvd"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = jsonencode({ Subtype = "kvm-mapped-dvd" })
      enabled               = true,
      name                  = "KVM_DVD",
      object_type           = "boot.VirtualMedia",
    },
  ]
}

module "boot_uefi_local_disk" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_secure = true
  description = "UEFI Local Disk Boot Example."
  name        = "example_uefi_local_disk"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = null
      enabled               = true,
      name                  = "LOCAL_DISK",
      object_type           = "boot.LocalDisk",
    },
  ]
}

module "boot_uefi_san" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_secure = true
  description = "UEFI SAN Boot Example."
  name        = "example_uefi_san"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
  boot_devices = [
    {
      additional_properties = jsonencode(
        {
          Bootloader = {
            ClassId     = "boot.Bootloader"
            Description = "rhel",
            Name        = "bootx64.efi",
            ObjectType  = "boot.Bootloader"
            Path        = "\\EFI\\BOOT\\BOOTx64.EFI"
          },
          InterfaceName = "vHBA-A",
          Lun           = 0,
          Slot          = "MLOM",
          Wwpn          = "20:00:00:25:B5:00:01:ff"
        }
      )
      enabled     = true,
      name        = "interfacename",
      object_type = "boot.San",
    },
  ]
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "boot_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"
  boot_mode     = "Uefi"
  boot_secure   = false
  description   = ""
  name          = "boot"
  org_moid      = local.org_moid
  profiles      = []
  tags          = var.tags
  boot_devices  = []
}

*/
