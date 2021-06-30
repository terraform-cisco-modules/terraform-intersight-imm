#____________________________________________________________
#
# Intersight Organization Data Source
# GUI Location: User Drop Down > Account {Name} > Account ID
#____________________________________________________________

data "intersight_organization_organization" "org_moid" {
  name = var.organization
}

locals {
  org_moid = data.intersight_organization_organization.org_moid.results.0.moid
}

data "terraform_remote_state" "pools" {
  backend = "local"
  config = {
    path = "../pools/terraform.tfstate"
  }
}

data "terraform_remote_state" "domain" {
  backend = "local"
  config = {
    path = "../domain/terraform.tfstate"
  }
}
