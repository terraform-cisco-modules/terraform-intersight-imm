# ssh_policies - Intersight SSH Policy Terraform Module

## Usage

```hcl
module "ssh_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/ssh_policies"

  # omitted...
}
```

This module will create an SSH Policy in Intersight.  This can be used to create Profiles and Templates that require an SSH Policy.  

These resources are consumed

* [SSH Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ssh_policy)

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
| [intersight_ssh_policy.ssh](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ssh_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_ssh"></a> [enable\_ssh](#input\_enable\_ssh) | State of SSH service on the endpoint. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"ssh"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_ssh_port"></a> [ssh\_port](#input\_ssh\_port) | Port used for secure shell access.  Valid range is between 1-65535. | `number` | `22` | no |
| <a name="input_ssh_timeout"></a> [ssh\_timeout](#input\_ssh\_timeout) | Number of seconds to wait before the system considers a SSH request to have timed out.  Valid range is between 60-10800. | `number` | `1800` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | SSH Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
