# power_policies - Intersight Power Policy Terraform Module

## Usage

```hcl
module "power_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/power_policies"

  # omitted...
}
```

This module will create a Power Policy in Intersight.  This can be used to create Profiles and Templates that require a Power Policy.  

These resources are consumed

* [Power Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/power_policy)

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
| [intersight_power_policy.power](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/power_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_budget"></a> [allocated\_budget](#input\_allocated\_budget) | Sets the Allocated Power Budget of the System (in Watts). This field is only supported for Cisco UCS X series Chassis. | `number` | `0` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"ssh"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_power_profiling"></a> [power\_profiling](#input\_power\_profiling) | Sets the Power Profiling of the Server. This field is only supported for Cisco UCS X series servers.<br>* Enabled - Set the value to Enabled.<br>* Disabled - Set the value to Disabled. | `string` | `"Enabled"` | no |
| <a name="input_power_restore_state"></a> [power\_restore\_state](#input\_power\_restore\_state) | Sets the Power Restore State of the Server.<br>* AlwaysOff - Set the Power Restore Mode to Off.<br>* AlwaysOn - Set the Power Restore Mode to On.<br>* LastState - Set the Power Restore Mode to LastState. | `string` | `"LastState"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_redundancy_mode"></a> [redundancy\_mode](#input\_redundancy\_mode) | Sets the Power Redundancy of the System. N+2 mode is only supported for Cisco UCS X series Chassis.<br>* Grid - Grid Mode requires two power sources. If one source fails, the surviving PSUs connected to the other source provides power to the chassis.<br>* NotRedundant - Power Manager turns on the minimum number of PSUs required to support chassis power requirements. No Redundant PSUs are maintained.<br>* N+1 - Power Manager turns on the minimum number of PSUs required to support chassis power requirements plus one additional PSU for redundancy.<br>* N+2 - Power Manager turns on the minimum number of PSUs required to support chassis power requirements plus two additional PSU for redundancy. This Mode is only supported for UCS X series Chassis. | `string` | `"Grid"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Power Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
