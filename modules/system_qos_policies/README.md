# system_qos_policies - Intersight System QoS Policy Terraform Module

## Usage

```hcl
module "system_qos_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/system_qos_policies"

  # omitted...
}
```

This module will create a System QoS Policy in Intersight.  This can be used to create UCS Domain Profiles that require a System QoS Policy.  

These resources are consumed

* [System QoS](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_system_qos_policy)

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
| [intersight_fabric_system_qos_policy.classes](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_system_qos_policy) | resource |
| [intersight_fabric_system_qos_policy.system_qos](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_system_qos_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_classes"></a> [classes](#input\_classes) | System QoS Classes to Configure for the Domain.  When configuring the System Classes Must be Configured in the Following Order:<br>* classes\_key - Name of the priority class.  You must configure all the following classes:<br>  - Best Effort<br>  - Bronze<br>  - FC<br>  - Gold<br>  - Platinum<br>  - Silver<br>* bandwidth\_percent - Percentage of bandwidth Assigned to traffic traffic tagged with this Class.<br>* cos - Class of service Assigned to the System QoS Class.<br>  - Best Effort - By default is 255 and cannot be changed.<br>  - Bronze - By default is 1.<br>  - FC - By default is 3 and cannot be changed.<br>  - Gold - By default is 4.<br>  - Platinum - By default is 5.<br>  - Silver - By default is 2.<br>* mtu - Maximum transmission unit (MTU) is the largest size packet or frame,that can be sent in a packet- or frame-based network such as the Internet.  Range is 1500-9216.<br>  - FC is 2240 and cannot be changed<br>  - All other priorities have a default of 1500 but can be configured in the range of 1500 to 9216.<br>* multicast\_optimize - Default is false.  If enabled, this QoS class will be optimized to send multiple packets.<br>* state - Administrative state for the QoS class.<br>  - Disabled - Admin configured Disabled State.<br>  - Enabled - Admin configured Enabled State.<br>  Note: "Best Effort" and "FC" Classes are "Enabled" and cannot be "Disabled".<br>* weight - The weight of the QoS Class controls the distribution of bandwidth between QoS Classes,with the same priority after the Guarantees for the QoS Classes are reached.<br>  - Best Effort - By default is 5.<br>  - Bronze - By default is 7.<br>  - FC - By default is 5.<br>  - Gold - By default is 9.<br>  - Platinum - By default is 10.<br>  - Silver - By default is 8. | <pre>map(object(<br>    {<br>      bandwidth_percent  = optional(number)<br>      cos                = optional(number)<br>      mtu                = optional(number)<br>      multicast_optimize = optional(bool)<br>      packet_drop        = optional(bool)<br>      state              = optional(string)<br>      weight             = optional(number)<br>    }<br>  ))</pre> | <pre>{<br>  "default": {<br>    "bandwidth_percent": 0,<br>    "cos": 0,<br>    "mtu": 1500,<br>    "multicast_optimize": false,<br>    "packet_drop": true,<br>    "state": "Disabled",<br>    "weight": 0<br>  }<br>}</pre> | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"system_qos_policy"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - fabric.SwitchProfile - For UCS Domain Switch Profiles. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | System QoS Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
