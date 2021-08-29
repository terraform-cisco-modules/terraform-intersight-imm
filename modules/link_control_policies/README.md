# link_control_policies - Intersight Link Control Policy Terraform Module

## Usage

```hcl
module "link_control" {

  source = "terraform-cisco-modules/imm/intersight//modules/link_control_policies"

  # omitted...
}
```

This module will create a Link Control Policy in Intersight.  This can be used to create Domain Policies that require a Link Control Policy.  

These resources are consumed

* [Link Control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_link_control_policy)

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
| [intersight_fabric_link_control_policy.link_control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_link_control_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"link_control"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_udld_admin_state"></a> [udld\_admin\_state](#input\_udld\_admin\_state) | Admin configured UDLD State for this port.<br>* Disabled - Admin configured Disabled State.<br>* Enabled - Admin configured Enabled State. | `string` | `"Enabled"` | no |
| <a name="input_udld_mode"></a> [udld\_mode](#input\_udld\_mode) | Admin configured UDLD Mode for this port.<br>* normal - Admin configured 'normal' UDLD mode.<br>* aggressive - Admin configured 'aggressive' UDLD mode. | `string` | `"normal"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Link Control Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
