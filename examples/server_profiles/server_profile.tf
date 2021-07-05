#____________________________________________________________
#
# Example Intersight UCS Server Profile Module
# GUI Location: Profiles > UCS Server Profile > Create UCS Server Profile
#____________________________________________________________

#______________________________________________
#
# Server Profile Example
#______________________________________________

module "server_profile" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/server_profile"
  action          = "No-op"
  assigned_server = []
  description     = "Server Profile Example."
  name            = "example"
  org_moid        = local.org_moid
  policy_bucket = [
    {
      # BIOS Policy
      moid        = data.terraform_remote_state.policies.outputs.bios_example.moid
      object_type = "bios.Policy"
    },
    {
      # Boot Policy
      moid        = data.terraform_remote_state.policies.outputs.boot_uefi_local_disk.moid
      object_type = "boot.PrecisionPolicy"
    },
    {
      # IPMI over LAN Policy
      moid        = data.terraform_remote_state.policies.outputs.ipmi_example.moid
      object_type = "ipmioverlan.Policy"
    },
    {
      # IMC Access Policy
      moid        = data.terraform_remote_state.policies.outputs.imc_access_example.moid
      object_type = "access.Policy"
    },
    {
      # LAN Connectivity Policy
      moid        = data.terraform_remote_state.policies.outputs.lan_connectivity_example.moid
      object_type = "vnic.LanConnectivityPolicy"
    },
    {
      # Local user Policy
      moid        = data.terraform_remote_state.policies.outputs.local_user_policy_example.moid
      object_type = "iam.EndPointUserPolicy"
    },
    {
      # SAN Connectivity Policy
      moid        = data.terraform_remote_state.policies.outputs.san_connectivity.moid
      object_type = "vnic.SanConnectivityPolicy"
    },
    {
      # SD Card Policy
      moid        = data.terraform_remote_state.policies.outputs.sd_card_example.moid
      object_type = "sdcard.Policy"
    },
    {
      # Serial over LAN Policy
      moid        = data.terraform_remote_state.policies.outputs.sol_example.moid
      object_type = "sol.Policy"
    },
    {
      # SNMP Policy
      moid        = data.terraform_remote_state.policies.outputs.snmp_example.moid
      object_type = "snmp.Policy"
    },
    {
      # Storage Policy
      moid        = data.terraform_remote_state.policies.outputs.storage_example.moid
      object_type = "storage.StoragePolicy"
    },
    {
      # Syslog Policy
      moid        = data.terraform_remote_state.policies.outputs.syslog_example.moid
      object_type = "syslog.Policy"
    },
    {
      # Virtual KVM Policy
      moid        = data.terraform_remote_state.policies.outputs.kvm_example.moid
      object_type = "kvm.Policy"
    },
    {
      # Virtual Media Policy
      moid        = data.terraform_remote_state.policies.outputs.vmedia_example_1.moid
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

module "server_profile_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/server_profile"
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
