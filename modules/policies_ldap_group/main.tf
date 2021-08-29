#____________________________________________________________________
#
# Intersight LDAP Policy > Add New LDAP Group
# GUI Location: Policies > Create Policy > LDAP > Add New LDAP Group
#____________________________________________________________________

data "intersight_iam_end_point_role" "group_role" {
  name = var.group_role
  type = "IMC"
}

resource "intersight_iam_ldap_group" "ldap_group" {
  depends_on = [
    data.intersight_iam_end_point_role.group_role
  ]
  domain = var.ldap_domain
  name   = var.ldap_group
  end_point_role {
    moid        = data.intersight_iam_end_point_role.group_role.results[0].moid
    object_type = "iam.EndPointRole"
  }
  ldap_policy {
    moid = var.ldap_policy_moid
  }
}
