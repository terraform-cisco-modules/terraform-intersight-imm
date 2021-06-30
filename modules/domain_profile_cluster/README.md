# domain_cluster - Intersight Domain Cluster Profile Terraform Module

## Usage

```hcl
module "domain_cluster" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_cluster"

  # omitted...
}
```

This module will create a UCS Domain Cluster Profile in Intersight.  This can be assigned to IMM Domains.  

These resources are created

* [domain_cluster](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_cluster_profile)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [intersight_fabric_switch_cluster_profile.domain_cluster](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_cluster_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_domain_profiles"></a> [domain\_profiles](#input\_domain\_profiles) | An array of relationships to fabricSwitchProfile resources. | `list(map(string))` | `[]` | no |
| <a name="input_domain_src_template"></a> [domain\_src\_template](#input\_domain\_src\_template) | A reference to a policyAbstractProfile resource. | `list(map(string))` | `[]` | no |
| <a name="input_domain_type"></a> [domain\_type](#input\_domain\_type) | Defines the type of the profile. Accepted values are instance or template. | `string` | `"instance"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"cluster_profile"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain Cluster Profile Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
