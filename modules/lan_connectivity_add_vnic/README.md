# lan_connectivity_add_vnic - Intersight LAN Connectivity - Add vNIC Policy Terraform Module

## Usage

```hcl
module "add_vnic" {

  source = "terraform-cisco-modules/imm/intersight//modules/lan_connectivity_add_vnic"

  # omitted...
}
```

This module will Add a vNIC to a LAN Connectivity Policy in Intersight.  This can be used to create Profiles and Templates that require a vNIC.  

These resources are consumed

* [LAN Connectivity - Add vNIC](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_if)

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
| [intersight_vnic_eth_if.vnic](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_if) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cdn_source"></a> [cdn\_source](#input\_cdn\_source) | Source of the CDN. It can either be user specified or be the same as the vNIC name.<br>* user - Source of the CDN is specified by the user.<br>* vnic - Source of the CDN is the same as the vNIC name. | `string` | `"vnic"` | no |
| <a name="input_cdn_value"></a> [cdn\_value](#input\_cdn\_value) | The CDN value entered in case of user defined mode. | `string` | `""` | no |
| <a name="input_enable_failover"></a> [enable\_failover](#input\_enable\_failover) | Setting this to true ensures that the traffic failover from one uplink to another auotmatically in case of an uplink failure. It is applicable for Cisco VIC adapters only which are connected to Fabric Interconnect cluster. The uplink if specified determines the primary uplink in case of a failover. | `bool` | `false` | no |
| <a name="input_eth_adapter_policy_moid"></a> [eth\_adapter\_policy\_moid](#input\_eth\_adapter\_policy\_moid) | A reference to a vnicEthAdapterPolicy resource. | `string` | n/a | yes |
| <a name="input_eth_network_control_policy_moid"></a> [eth\_network\_control\_policy\_moid](#input\_eth\_network\_control\_policy\_moid) | A reference to a fabricEthNetworkControlPolicy resource. | `string` | n/a | yes |
| <a name="input_eth_network_group_policy_moid"></a> [eth\_network\_group\_policy\_moid](#input\_eth\_network\_group\_policy\_moid) | An array of relationships to fabricEthNetworkGroupPolicy resources. | `set(string)` | `[]` | no |
| <a name="input_eth_network_policy_moid"></a> [eth\_network\_policy\_moid](#input\_eth\_network\_policy\_moid) | A reference to a vnicEthNetworkPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_eth_qos_policy_moid"></a> [eth\_qos\_policy\_moid](#input\_eth\_qos\_policy\_moid) | A reference to a vnicEthQosPolicy resource. | `string` | n/a | yes |
| <a name="input_ip_lease_moid"></a> [ip\_lease\_moid](#input\_ip\_lease\_moid) | A reference to an ippoolIpLease resource. | `set(string)` | `[]` | no |
| <a name="input_iscsi_boot_policy_moid"></a> [iscsi\_boot\_policy\_moid](#input\_iscsi\_boot\_policy\_moid) | A reference to a vnicIscsiBootPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_lan_connectivity_policy_moid"></a> [lan\_connectivity\_policy\_moid](#input\_lan\_connectivity\_policy\_moid) | A reference to a vnicLanConnectivityPolicy resource. | `string` | n/a | yes |
| <a name="input_mac_address_allocation_type"></a> [mac\_address\_allocation\_type](#input\_mac\_address\_allocation\_type) | Type of allocation selected to assign a MAC address for the vnic.<br>* POOL - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface.<br>* STATIC - The user assigns a static mac/wwn address for the Virtual Interface. | `string` | `"POOL"` | no |
| <a name="input_mac_address_pool_moid"></a> [mac\_address\_pool\_moid](#input\_mac\_address\_pool\_moid) | A reference to a macpoolPool resource. | `set(string)` | `[]` | no |
| <a name="input_mac_address_static"></a> [mac\_address\_static](#input\_mac\_address\_static) | The MAC address must be in hexadecimal format xx:xx:xx:xx:xx:xx.To ensure uniqueness of MACs in the LAN fabric, you are strongly encouraged to use thefollowing MAC prefix 00:25:B5:xx:xx:xx. | `string` | `""` | no |
| <a name="input_mac_lease_moid"></a> [mac\_lease\_moid](#input\_mac\_lease\_moid) | A reference to a macpoolLease resource. | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the vNIC. | `string` | `"vnic"` | no |
| <a name="input_placement_pci_link"></a> [placement\_pci\_link](#input\_placement\_pci\_link) | The PCI Link used as transport for the virtual interface. All VIC adapters have a single PCI link except VIC 1385 which has two. | `number` | `0` | no |
| <a name="input_placement_pci_order"></a> [placement\_pci\_order](#input\_placement\_pci\_order) | The order in which the virtual interface is brought up. The order assigned to an interface should be unique for all the Ethernet and Fibre-Channel interfaces on each PCI link on a VIC adapter. The maximum value of PCI order is limited by the number of virtual interfaces (Ethernet and Fibre-Channel) on each PCI link on a VIC adapter. All VIC adapters have a single PCI link except VIC 1385 which has two. | `number` | `0` | no |
| <a name="input_placement_slot_id"></a> [placement\_slot\_id](#input\_placement\_slot\_id) | PCIe Slot where the VIC adapter is installed. Supported values are (1-15) and MLOM. | `string` | `"MLOM"` | no |
| <a name="input_placement_switch_id"></a> [placement\_switch\_id](#input\_placement\_switch\_id) | The fabric port to which the vNICs will be associated.<br>* A - Fabric A of the FI cluster.<br>* B - Fabric B of the FI cluster.<br>* None - Fabric Id is not set to either A or B for the standalone case where the server is not connected to Fabric Interconnects. The value 'None' should be used. | `string` | `"None"` | no |
| <a name="input_placement_uplink_port"></a> [placement\_uplink\_port](#input\_placement\_uplink\_port) | Adapter port on which the virtual interface will be created.  This attribute is for Standalone Servers Only. | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_usnic_adapter_policy_moid"></a> [usnic\_adapter\_policy\_moid](#input\_usnic\_adapter\_policy\_moid) | Ethernet Adapter policy to be associated with the usNICs. | `string` | `""` | no |
| <a name="input_usnic_class_of_service"></a> [usnic\_class\_of\_service](#input\_usnic\_class\_of\_service) | Class of Service to be used for traffic on the usNIC.  Valid Range is 0-6. | `number` | `5` | no |
| <a name="input_usnic_number_of_usnics"></a> [usnic\_number\_of\_usnics](#input\_usnic\_number\_of\_usnics) | Number of usNIC interfaces to be created.  Range is 0-255. | `number` | `0` | no |
| <a name="input_vmq_enable_virtual_machine_multi_queue"></a> [vmq\_enable\_virtual\_machine\_multi\_queue](#input\_vmq\_enable\_virtual\_machine\_multi\_queue) | Enables Virtual Machine Multi-Queue feature on the virtual interface. VMMQ allows configuration of multiple I/O queues for a single VM and thus distributes traffic across multiple CPU cores in a VM. | `bool` | `false` | no |
| <a name="input_vmq_enabled"></a> [vmq\_enabled](#input\_vmq\_enabled) | Enables VMQ feature on the virtual interface. | `bool` | `false` | no |
| <a name="input_vmq_number_of_interrupts"></a> [vmq\_number\_of\_interrupts](#input\_vmq\_number\_of\_interrupts) | The number of interrupt resources to be allocated. Recommended value is the number of CPU threads or logical processors available in the server.  Range is 1-514. | `number` | `16` | no |
| <a name="input_vmq_number_of_sub_vnics"></a> [vmq\_number\_of\_sub\_vnics](#input\_vmq\_number\_of\_sub\_vnics) | The number of sub vNICs to be created.  Range is 0-64. | `number` | `64` | no |
| <a name="input_vmq_number_of_virtual_machine_queues"></a> [vmq\_number\_of\_virtual\_machine\_queues](#input\_vmq\_number\_of\_virtual\_machine\_queues) | The number of hardware Virtual Machine Queues to be allocated. The number of VMQs per adapter must be one more than the maximum number of VM NICs.  Range is 1-128. | `number` | `4` | no |
| <a name="input_vmq_vmmq_adapter_policy_moid"></a> [vmq\_vmmq\_adapter\_policy\_moid](#input\_vmq\_vmmq\_adapter\_policy\_moid) | Ethernet Adapter policy to be associated with the VMQ vNICs. The Transmit Queue and Receive Queue resource value of VMMQ adapter policy should be greater than or equal to the configured number of sub vNICs. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LAN Connectivity - Add vNIC Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
