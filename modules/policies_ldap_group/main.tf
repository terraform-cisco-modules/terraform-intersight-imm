#____________________________________________________________
#
# Intersight LDAP Group
# GUI Location: Policies > Create Policy > LDAP
#____________________________________________________________

data "intersight_iam_end_point_role" "group_role" {
  name = var.group_role
  type = "IMC"
}

resource "intersight_iam_ldap_group" "ldap_group" {
  depends_on = [
    data.intersight_iam_end_point_role.user_role
  ]
  domain = var.ldap_domain
  name   = var.ldap_group
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  end_point_role {
    moid        = data.intersight_iam_end_point_role.group_role.results[0].moid
    object_type = "iam.EndPointRole"
  }
  iam_ldap_policy {
    moid = var.ldap_policy_moid
  }
}
