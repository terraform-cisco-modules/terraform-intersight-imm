#____________________________________________________________
#
# Example Intersight UCS Domain Switch Cluster Module
# GUI Location: Profiles > UCS Domain Profile > Create UCS Domain Profile
#____________________________________________________________

module "switch_cluster_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/domain_profile_cluster"
  description = "UCS Domain Cluster Example."
  name        = "example"
  domain_type = "instance"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "switch_control_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/domain_profile_cluster"
  description = ""
  name        = "cluster_profile"
  domain_type = "instance"
  org_moid    = local.org_moid
  tags        = var.tags
}

*/
