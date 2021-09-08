# virtual_kvm_policies - Intersight Virtual KVM Policy Terraform Module

## Usage

```hcl
module "virtual_kvm" {

  source = "terraform-cisco-modules/imm/intersight//modules/virtual_kvm_policies"

  # omitted...
}
```

This module will create a KVM Policy in Intersight.  This can be used to create Profiles and Templates that require a KVM Policy.  

These resources are consumed

* [Virtual KVM](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kvm_policy)

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
| [intersight_kvm_policy.kvm](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kvm_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_local_server_video"></a> [enable\_local\_server\_video](#input\_enable\_local\_server\_video) | If enabled, displays KVM session on any monitor attached to the server. | `bool` | `true` | no |
| <a name="input_enable_video_encryption"></a> [enable\_video\_encryption](#input\_enable\_video\_encryption) | If enabled, encrypts all video information sent through KVM. | `bool` | `true` | no |
| <a name="input_enable_virtual_kvm"></a> [enable\_virtual\_kvm](#input\_enable\_virtual\_kvm) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_maximum_sessions"></a> [maximum\_sessions](#input\_maximum\_sessions) | The maximum number of concurrent KVM sessions allowed. Range is 1 to 4. | `number` | `4` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"kvm"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_remote_port"></a> [remote\_port](#input\_remote\_port) | The port used for KVM communication. Range is 1 to 65535. | `number` | `2068` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | KVM Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
