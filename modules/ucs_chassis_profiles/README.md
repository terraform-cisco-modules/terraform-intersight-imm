# ucs_chassis_profiles - Intersight UCS Chassis Profile Terraform Module

## Usage

```hcl
module "ucs_chassis_profile" {

  source = "terraform-cisco-modules/imm/intersight//modules/ucs_chassis_profiles"

  # omitted...
}
```

This module will create a UCS Chassis Profile in Intersight.  

These resources are created

* [UCS Chassis Profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/chassis_profile)

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
| [intersight_chassis_profile.chassis_profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/chassis_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | Action to Perform on the Chassis Profile Assignment.  Options are:<br>* Deploy<br>* No-op<br>* Unassign | `string` | `"No-op"` | no |
| <a name="input_assigned_chassis"></a> [assigned\_chassis](#input\_assigned\_chassis) | A reference to a equipmentChassis resource. | `list(map(string))` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Profile. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Profile. | `string` | `"chassis_profile"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_src_template"></a> [src\_template](#input\_src\_template) | A reference to a policyAbstractProfile resource.. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_platform"></a> [target\_platform](#input\_target\_platform) | The platform for which the chassis profile is applicable. It can either be a chassis that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.<br>* FIAttached - Chassis which are connected to a Fabric Interconnect that is managed by Intersight. | `string` | `"FIAttached"` | no |
| <a name="input_type"></a> [type](#input\_type) | Defines the type of the profile. Accepted values are:<br>* instance<br>* template | `string` | `"instance"` | no |
| <a name="input_wait_for_completion"></a> [wait\_for\_completion](#input\_wait\_for\_completion) | This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Chassis Profile Managed Object ID (moid). |
| <a name="output_name"></a> [name](#output\_name) | UCS Chassis Profile Name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
