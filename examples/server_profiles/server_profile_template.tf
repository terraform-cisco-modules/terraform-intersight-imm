#____________________________________________________________
#
# Example Intersight UCS Server Profile Module
# GUI Location: Profiles > UCS Server Profile > Create UCS Server Profile
#____________________________________________________________

#______________________________________________
#
# Server Profile Example
#______________________________________________

module "server_profile_template" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/server_profile_template"
  action      = "No-op"
  description = "Server Profile Template Example."
  name        = "example_template"
  org_moid    = local.org_moid
  tags        = var.tags
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
}


/*

#______________________________________________
#
# Server Profile Template Default Values
#______________________________________________

module "server_profile_template_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/server_profile_template"
  action          = var.action
  description     = ""
  name            = "server_profile_template"
  org_moid        = local.org_moid
  policy_bucket   = []
  target_platform = "FIAttached"
  tags            = var.tags
}

*/
