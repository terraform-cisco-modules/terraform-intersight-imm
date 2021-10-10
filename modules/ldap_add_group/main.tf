#____________________________________________________________________
#
# Intersight LDAP Policy > Add New LDAP Group
# GUI Location: Policies > Create Policy > LDAP > Add New LDAP Group
#____________________________________________________________________

data "intersight_iam_end_point_role" "role" {
  name = var.role
  type = "IMC"
}

resource "intersight_iam_ldap_group" "ldap_group" {
  depends_on = [
    data.intersight_iam_end_point_role.role
  ]
  domain = var.domain
  name   = var.name
  end_point_role {
    moid        = data.intersight_iam_end_point_role.role.results[0].moid
    object_type = "iam.EndPointRole"
  }
  ldap_policy {
    moid = var.ldap_policy_moid
  }
}
