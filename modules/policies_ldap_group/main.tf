#____________________________________________________________
#
# Intersight LDAP Group Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_iam_ldap_group" "ldap_group" {
  domain = "auslab.cisco.com"
  name   = "super_admin"
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  end_point_role {
    moid = data.intersight_iam_end_point_role.imc_admin.results[0].moid
  }
  iam_ldap_policy {
    moid = intersight_iam_ldap_policy.policy1.moid
  }
}
