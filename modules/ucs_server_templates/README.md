# ucs_server_templates - Intersight UCS Server Template Terraform Module

## Usage

```hcl
module "ucs_server_template" {

  source = "terraform-cisco-modules/imm/intersight//modules/ucs_server_templates"

  # omitted...
}
```

This module will create a UCS Server Template in Intersight.  This can be assigned to Fabric Attached Servers or Standalone Servers.  

These resources are created

* [UCS Server Template](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/server_profile_template)

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
| [intersight_server_profile_template.server_template](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/server_profile_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | Action to Perform on the Chassis Profile Assignment.  Options are:<br>  * Deploy<br>  * No-op<br>  * Unassign | `string` | `"No-op"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"server_template"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_platform"></a> [target\_platform](#input\_target\_platform) | The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.<br>  * FIAttached - Servers which are connected to a Fabric Interconnect that is managed by Intersight.<br>  * Standalone - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected. | `string` | `"FIAttached"` | no |
| <a name="input_uuid_pool"></a> [uuid\_pool](#input\_uuid\_pool) | A reference to a uuidpoolPool resource. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Server Profile Template Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
