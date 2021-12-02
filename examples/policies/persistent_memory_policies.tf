#____________________________________________________________
#
# Example Intersight Persistent Memory Policy Module
# GUI Location: Policies > Create Policy > Persistent Memory
#____________________________________________________________

module "persistent_memory_example_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version           = ">=0.9.6"
  source            = "terraform-cisco-modules/imm/intersight//modules/persistent_memory_policies"
  description       = "Persistent Memory Policy Example."
  name              = "example"
  org_moid          = local.org_moid
  profiles          = {}
  retain_namespaces = true
  secure_passphrase = var.persistent_passphrase
  tags              = var.tags
  logical_namespaces = [
    {
      capacity         = 512
      mode             = "raw"
      name             = "example_1"
      socket_id        = 1
      socket_memory_id = "Not Applicable"
    }
  ]
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "persistent_memory_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                       = "terraform-cisco-modules/imm/intersight//modules/persistent_memory_policies"
  description                  = ""
  goals_memory_percentage      = 0
  goals_persistent_memory_type = "app-direct"
  management_mode              = "configured-from-intersight"
  name                         = "persistent_memory"
  org_moid                     = local.org_moid
  profiles                     = []
  retain_name_spaces           = true
  secure_passphrase            = ""
  tags                         = var.tags
  logical_name_spaces          = []
}

*/
