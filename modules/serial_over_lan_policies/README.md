# serial_over_lan_policies - Intersight Serial over LAN Policy Terraform Module

## Usage

```hcl
module "sol_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/serial_over_lan_policies"

  # omitted...
}
```

This module will create a Serial over LAN Policy in Intersight.  This can be used to create Service Profiles and Templates that require a Serial over LAN Policy.  

These resources are consumed

* [Serial over LAN](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/sol_policy)

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
| [intersight_sol_policy.sol](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/sol_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_baud_rate"></a> [baud\_rate](#input\_baud\_rate) | Baud Rate to Assign to the Policy.  Options are:<br>* 9600<br>* 19200<br>* 38400<br>* 57600<br>* 115200 | `string` | `9600` | no |
| <a name="input_com_port"></a> [com\_port](#input\_com\_port) | Communications Port to Assign to the Policy.  Options are:<br>* com0<br>* com1 | `string` | `"com0"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"sol"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_ssh_port"></a> [ssh\_port](#input\_ssh\_port) | SSH Port to Assign to the Policy.  Range is between 1024-65535. | `string` | `2400` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Serial over LAN Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
