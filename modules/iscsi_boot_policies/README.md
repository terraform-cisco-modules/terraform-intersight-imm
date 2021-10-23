# iscsi_boot_policies - Intersight iSCSI Boot Policy Terraform Module

## Usage

```hcl
module "iscsi_boot" {

  source = "terraform-cisco-modules/imm/intersight//modules/iscsi_boot_policies"

  # omitted...
}
```

This module will create an iSCSI Boot Policy in Intersight.  This can be used to create Profiles and Templates that require an iSCSI Target Policy.  

These resources are consumed

* [iSCSI Boot](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_boot_policy)

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
| [intersight_vnic_iscsi_boot_policy.iscsi_boot](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_boot_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authentication"></a> [authentication](#input\_authentication) | When using Authentication which type of authentication should be used.<br>* chap - perform CHAP Authentication<br>* mutual\_chap - Perform Mutual CHAP Authentication. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_dhcp_vendor_id_iqn"></a> [dhcp\_vendor\_id\_iqn](#input\_dhcp\_vendor\_id\_iqn) | Auto target interface that is represented via the Initiator name or the DHCP vendor ID. The vendor ID can be up to 32 alphanumeric characters. | `string` | `""` | no |
| <a name="input_initiator_ip_pool"></a> [initiator\_ip\_pool](#input\_initiator\_ip\_pool) | A reference to a ippoolPool resource. | `set(string)` | `[]` | no |
| <a name="input_initiator_ip_source"></a> [initiator\_ip\_source](#input\_initiator\_ip\_source) | Source Type of Initiator IP Address - DHCP/Static/Pool.<br>* DHCP - The IP address is assigned using DHCP, if available.<br>* Static - Static IPv4 address is assigned to the iSCSI boot interface based on the information entered in this area.<br>* Pool - An IPv4 address is assigned to the iSCSI boot interface from the management IP address pool. | `string` | `"Pool"` | no |
| <a name="input_initiator_static_ip_v4_config"></a> [initiator\_static\_ip\_v4\_config](#input\_initiator\_static\_ip\_v4\_config) | Object List of Initiator Static IPv4 Configuration<br>* default\_gateway - IP address of the default IPv4 gateway.<br>* ip\_address - Static IP address provided for iSCSI Initiator.<br>* primary\_dns - IP Address of the primary Domain Name System (DNS) server.<br>* secondary\_dns - IP Address of the secondary Domain Name System (DNS) server.<br>* subnet\_mask - A subnet mask is a 32-bit number that masks an IP address and divides the IP address into network address and host address. | <pre>object(<br>    {<br>      default_gateway = string<br>      ip_address      = string<br>      primary_dns     = optional(string)<br>      secondary_dns   = optional(string)<br>      subnet_mask     = string<br>    }<br>  )</pre> | <pre>{<br>  "default_gateway": "**REQUIRED** if configuring static IP",<br>  "ip_address": "**REQUIRED** if configuring static IP",<br>  "primary_dns": "",<br>  "secondary_dns": "",<br>  "subnet_mask": "**REQUIRED** if configuring static IP"<br>}</pre> | no |
| <a name="input_iscsi_adapter_policy_moid"></a> [iscsi\_adapter\_policy\_moid](#input\_iscsi\_adapter\_policy\_moid) | A reference to a vnicIscsiAdapterPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_iscsi_boot"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Password, if doing authentication. | `string` | `""` | no |
| <a name="input_primary_target_policy_moid"></a> [primary\_target\_policy\_moid](#input\_primary\_target\_policy\_moid) | A reference to a vnicIscsiStaticTargetPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_secondary_target_policy_moid"></a> [secondary\_target\_policy\_moid](#input\_secondary\_target\_policy\_moid) | A reference to a vnicIscsiStaticTargetPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_source_type"></a> [target\_source\_type](#input\_target\_source\_type) | Source Type of Targets - Auto/Static.<br>* Auto - Type indicates that the system selects the target interface automatically during iSCSI boot.<br>* Static - Type indicates that static target interface is assigned to iSCSI boot. | `string` | `"Auto"` | no |
| <a name="input_username"></a> [username](#input\_username) | Username, if doing authentication. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | iSCSI Boot Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
