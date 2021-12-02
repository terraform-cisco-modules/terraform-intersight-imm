#_________________________________________________________________________
#
# Example Intersight UCS Server Profile Module
# GUI Location: Profiles > UCS Server Profile > Create UCS Server Profile
#_________________________________________________________________________

#______________________________________________
#
# Server Profile Example
#______________________________________________

module "ucs_server_profile" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.bios_example,
    module.boot_uefi_local_disk,
    module.ipmi_example,
    module.imc_access_example,
    module.lan_connectivity_example,
    module.local_user_policy_example,
    module.san_connectivity,
    module.sd_card_example,
    module.sol_example,
    module.snmp_example
  ]
  version         = ">=0.9.6"
  source          = "terraform-cisco-modules/imm/intersight//modules/ucs_server_profiles"
  action          = "No-op"
  assigned_server = []
  description     = "Server Profile Example."
  name            = "example"
  org_moid        = local.org_moid
  policy_bucket = [
    {
      # BIOS Policy
      moid        = module.bios_example.moid
      object_type = "bios.Policy"
    },
    {
      # Boot Policy
      moid        = module.boot_uefi_local_disk.moid
      object_type = "boot.PrecisionPolicy"
    },
    {
      # IPMI over LAN Policy
      moid        = module.ipmi_example.moid
      object_type = "ipmioverlan.Policy"
    },
    {
      # IMC Access Policy
      moid        = module.imc_access_example.moid
      object_type = "access.Policy"
    },
    {
      # LAN Connectivity Policy
      moid        = module.lan_connectivity_example.moid
      object_type = "vnic.LanConnectivityPolicy"
    },
    {
      # Local user Policy
      moid        = module.local_user_policy_example.moid
      object_type = "iam.EndPointUserPolicy"
    },
    {
      # SAN Connectivity Policy
      moid        = module.san_connectivity.moid
      object_type = "vnic.SanConnectivityPolicy"
    },
    {
      # SD Card Policy
      moid        = module.sd_card_example.moid
      object_type = "sdcard.Policy"
    },
    {
      # Serial over LAN Policy
      moid        = module.sol_example.moid
      object_type = "sol.Policy"
    },
    {
      # SNMP Policy
      moid        = module.snmp_example.moid
      object_type = "snmp.Policy"
    },
    # {
    #   # Storage Policy
    #   moid        = module.storage_example.moid
    #   object_type = "storage.StoragePolicy"
    # },
    {
      # Syslog Policy
      moid        = module.syslog_example.moid
      object_type = "syslog.Policy"
    },
    {
      # Virtual KVM Policy
      moid        = module.kvm_example.moid
      object_type = "kvm.Policy"
    },
    {
      # Virtual Media Policy
      moid        = module.vmedia_example_1.moid
      object_type = "vmedia.Policy"
    },
  ]
  src_template = []
  tags         = var.tags
}


/*

#______________________________________________
#
# Server Profile Default Values
#______________________________________________

module "ucs_server_profile_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/ucs_server_profiles"
  action          = var.action
  assigned_server = []
  description     = ""
  name            = "example"
  org_moid        = local.org_moid
  policy_bucket   = []
  src_template    = []
  target_platform = "FIAttached"
  type            = "instance"
  tags            = var.tags
}

*/
