# policies_vnic_iscsi_boot - Intersight (vNIC) iSCSI Boot Policy Terraform Module

## Usage

```hcl
module "vnic_iscsi_boot" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_iscsi_boot"

  # omitted...
}
```

This module will create an iSCSI Boot Policy in Intersight.  This can be used to create Profiles and Templates that require an iSCSI Target Policy.  

These resources are consumed

* [vnic_iscsi_boot](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_boot_policy)

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
| [intersight_vnic_iscsi_boot_policy.vnic_iscsi_boot](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_boot_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_targetvendor_name"></a> [auto\_targetvendor\_name](#input\_auto\_targetvendor\_name) | Auto target interface that is represented via the Initiator name or the DHCP vendor ID. The vendor ID can be up to 32 alphanumeric characters. | `string` | `""` | no |
| <a name="input_chap_password"></a> [chap\_password](#input\_chap\_password) | Chap Password, if doing chap authentication. | `string` | `""` | no |
| <a name="input_chap_user_id"></a> [chap\_user\_id](#input\_chap\_user\_id) | Chap User Id, if doing chap authentication. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_initiator_ip_pool"></a> [initiator\_ip\_pool](#input\_initiator\_ip\_pool) | A reference to a ippoolPool resource. | `set(string)` | `[]` | no |
| <a name="input_initiator_ip_source"></a> [initiator\_ip\_source](#input\_initiator\_ip\_source) | Source Type of Initiator IP Address - DHCP/Static/Pool.<br>* DHCP - The IP address is assigned using DHCP, if available.<br>* Static - Static IPv4 address is assigned to the iSCSI boot interface based on the information entered in this area.<br>* Pool - An IPv4 address is assigned to the iSCSI boot interface from the management IP address pool. | `string` | `"Pool"` | no |
| <a name="input_initiator_static_gateway"></a> [initiator\_static\_gateway](#input\_initiator\_static\_gateway) | IP address of the default IPv4 gateway. | `string` | `""` | no |
| <a name="input_initiator_static_ip"></a> [initiator\_static\_ip](#input\_initiator\_static\_ip) | Static IP address provided for iSCSI Initiator. | `string` | `""` | no |
| <a name="input_initiator_static_netmask"></a> [initiator\_static\_netmask](#input\_initiator\_static\_netmask) | A subnet mask is a 32-bit number that masks an IP address and divides the IP address into network address and host address. | `string` | `""` | no |
| <a name="input_initiator_static_primary_dns"></a> [initiator\_static\_primary\_dns](#input\_initiator\_static\_primary\_dns) | IP Address of the primary Domain Name System (DNS) server. | `string` | `""` | no |
| <a name="input_initiator_static_secondary_dns"></a> [initiator\_static\_secondary\_dns](#input\_initiator\_static\_secondary\_dns) | IP Address of the secondary Domain Name System (DNS) server. | `string` | `""` | no |
| <a name="input_iscsi_adapter_policy"></a> [iscsi\_adapter\_policy](#input\_iscsi\_adapter\_policy) | A reference to a vnicIscsiAdapterPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_mschap_password"></a> [mschap\_password](#input\_mschap\_password) | Mutual Chap Password, if doing mschap authentication. | `string` | `""` | no |
| <a name="input_mschap_user_id"></a> [mschap\_user\_id](#input\_mschap\_user\_id) | Mutual Chap User Id, if doing mschap authentication. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_iscsi_boot"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_primary_target_policy"></a> [primary\_target\_policy](#input\_primary\_target\_policy) | A reference to a vnicIscsiStaticTargetPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_secondary_target_policy"></a> [secondary\_target\_policy](#input\_secondary\_target\_policy) | A reference to a vnicIscsiStaticTargetPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_source_type"></a> [target\_source\_type](#input\_target\_source\_type) | Source Type of Targets - Auto/Static.<br>* Auto - Type indicates that the system selects the target interface automatically during iSCSI boot.<br>* Static - Type indicates that static target interface is assigned to iSCSI boot. | `string` | `"Auto"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | (vNIC) iSCSI Boot Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
