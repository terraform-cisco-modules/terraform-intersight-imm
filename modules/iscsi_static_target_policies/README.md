# iscsi_static_target_policies - Intersight iSCSI Static Target Policy Terraform Module

## Usage

```hcl
module "iscsi_static_target" {

  source = "terraform-cisco-modules/imm/intersight//modules/iscsi_static_target_policies"

  # omitted...
}
```

This module will create a iSCSI Static Target Policy in Intersight.  This can be used to create Profiles and Templates that require a iSCSI Static Target Policy.  

These resources are consumed

* [iSCSI Static Target](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_static_target_policy)

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
| [intersight_vnic_iscsi_static_target_policy.iscsi_static_target](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_static_target_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The IPv4 address assigned to the iSCSI target. | `string` | `""` | no |
| <a name="input_lun"></a> [lun](#input\_lun) | The LUN parameters associated with an iSCSI target. This complex property has following sub-properties:<br>* bootable - Specifies LUN is bootable. true or false.<br>* lun\_id - The Identifier of the LUN. | <pre>list(object(<br>    {<br>      bootable = optional(bool)<br>      lun_id   = number<br>    }<br>  ))</pre> | <pre>[<br>  {<br>    "bootable": true,<br>    "lun_id": null<br>  }<br>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_iscsi_target"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | The port associated with the iSCSI target. | `number` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_name"></a> [target\_name](#input\_target\_name) | Qualified Name (IQN) or Extended Unique Identifier (EUI) name of the iSCSI target. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | iSCSI Static Target Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
