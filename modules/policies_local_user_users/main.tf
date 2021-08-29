#____________________________________________________________________
#
# Intersight Local User - Add New User
# GUI Location: Policies > Create Policy > Local User > Add New User
#____________________________________________________________________

data "intersight_iam_end_point_role" "user_role" {
  name = var.user_role
  type = "IMC"
}

resource "intersight_iam_end_point_user" "user" {
  name = var.username
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
}

resource "intersight_iam_end_point_user_role" "user_role" {
  depends_on = [
    data.intersight_iam_end_point_role.user_role,
    intersight_iam_end_point_user.user
  ]
  enabled  = var.user_enabled
  password = var.user_password
  end_point_role {
    moid        = data.intersight_iam_end_point_role.user_role.results[0].moid
    object_type = "iam.EndPointRole"
  }
  end_point_user {
    moid        = intersight_iam_end_point_user.user.moid
    object_type = "iam.EndPointUser"
  }
  end_point_user_policy {
    moid        = var.user_policy_moid
    object_type = "iam.EndPointUserPolicy"
  }
}
