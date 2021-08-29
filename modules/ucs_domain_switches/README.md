# ucs_domain_switch - Intersight UCS Domain Profile - Switch Profile Terraform Module

## Usage

```hcl
module "ucs_domain_switch" {

  source = "terraform-cisco-modules/imm/intersight//modules/ucs_domain_switch"

  # omitted...
}
```

This module will create a UCS Domain Switch Profile in Intersight.  This can be assigned to IMM Domains.  

These resources are created

* [UCS Domain Profile - Switch Profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_profile)

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
| [intersight_fabric_switch_profile.switch_profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | Action to Perform on the Switch Profile Assignment.  Options are {Deploy\|No-op\|Unassign}. | `string` | `"No-op"` | no |
| <a name="input_assigned_switch"></a> [assigned\_switch](#input\_assigned\_switch) | A reference to a networkElement resource. | `set(string)` | `[]` | no |
| <a name="input_cluster_moid"></a> [cluster\_moid](#input\_cluster\_moid) | List of UCS Domain Cluster Profiles to Assign to the Switch Profile. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"domain_profile_switch"` | no |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_switch_type"></a> [switch\_type](#input\_switch\_type) | Defines the type of the profile. Accepted values are instance or template. | `string` | `"instance"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain Profile - Switch Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
