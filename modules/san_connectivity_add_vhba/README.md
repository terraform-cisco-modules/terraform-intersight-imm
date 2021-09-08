# san_connectivity_add_vhba - Intersight SAN Connectivity - Add vHBA Terraform Module

## Usage

```hcl
module "add_vhba" {

  source = "terraform-cisco-modules/imm/intersight//modules/san_connectivity_add_vhba"

  # omitted...
}
```

This module will Add a vHBA to a SAN Connectivity Policy in Intersight.  This can be used to create Profiles and Templates that require a vHBA Policy.  

These resources are consumed

* [SAN Connectivity - Add vHBA](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_if)

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
| [intersight_vnic_fc_if.vhba](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_if) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fc_adapter_policy_moid"></a> [fc\_adapter\_policy\_moid](#input\_fc\_adapter\_policy\_moid) | A reference to a vnicFcAdapterPolicy resource. | `string` | n/a | yes |
| <a name="input_fc_network_policy_moid"></a> [fc\_network\_policy\_moid](#input\_fc\_network\_policy\_moid) | A reference to a vnicFcNetworkPolicy resource. | `string` | n/a | yes |
| <a name="input_fc_qos_policy_moid"></a> [fc\_qos\_policy\_moid](#input\_fc\_qos\_policy\_moid) | A reference to a vnicFcQosPolicy resource. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the virtual fibre channel interface. | `string` | `"vhba"` | no |
| <a name="input_persistent_lun_bindings"></a> [persistent\_lun\_bindings](#input\_persistent\_lun\_bindings) | Enables retention of LUN ID associations in memory until they are manually cleared. | `bool` | `false` | no |
| <a name="input_placement_pci_link"></a> [placement\_pci\_link](#input\_placement\_pci\_link) | The PCI Link used as transport for the virtual interface. All VIC adapters have a single PCI link except VIC 1385 which has two. | `number` | `0` | no |
| <a name="input_placement_pci_order"></a> [placement\_pci\_order](#input\_placement\_pci\_order) | The order in which the virtual interface is brought up. The order assigned to an interface should be unique for all the Ethernet and Fibre-Channel interfaces on each PCI link on a VIC adapter. The maximum value of PCI order is limited by the number of virtual interfaces (Ethernet and Fibre-Channel) on each PCI link on a VIC adapter. All VIC adapters have a single PCI link except VIC 1385 which has two. | `number` | `0` | no |
| <a name="input_placement_slot_id"></a> [placement\_slot\_id](#input\_placement\_slot\_id) | PCIe Slot where the VIC adapter is installed. Supported values are (1-15) and MLOM. | `string` | `"MLOM"` | no |
| <a name="input_placement_switch_id"></a> [placement\_switch\_id](#input\_placement\_switch\_id) | The fabric port to which the vhbas will be associated.<br>* A - Fabric A of the FI cluster.<br>* B - Fabric B of the FI cluster.<br>* None - Fabric Id is not set to either A or B for the standalone case where the server is not connected to Fabric Interconnects. | `string` | `"None"` | no |
| <a name="input_placement_uplink_port"></a> [placement\_uplink\_port](#input\_placement\_uplink\_port) | Adapter port on which the virtual interface will be created. | `number` | `0` | no |
| <a name="input_san_connectivity_policy_moid"></a> [san\_connectivity\_policy\_moid](#input\_san\_connectivity\_policy\_moid) | A reference to a vnicSanConnectivityPolicy resource. | `string` | n/a | yes |
| <a name="input_vhba_type"></a> [vhba\_type](#input\_vhba\_type) | VHBA Type configuration for SAN Connectivity Policy. This configuration is supported only on Cisco VIC 14XX series and higher series of adapters.<br>* fc-initiator - The default value set for vHBA Type Configuration. Fc-initiator specifies vHBA as a consumer of storage. Enables SCSI commands to transfer data and status information between host and target storage systems.<br>* fc-nvme-initiator - Fc-nvme-initiator specifies vHBA as a consumer of storage. Enables NVMe-based message commands to transfer data and status information between host and target storage systems.<br>* fc-nvme-target - Fc-nvme-target specifies vHBA as a provider of storage volumes to initiators. Enables NVMe-based message commands to transfer data and status information between host and target storage systems. Currently tech-preview, only enabled with an asynchronous driver.<br>* fc-target - Fc-target specifies vHBA as a provider of storage volumes to initiators. Enables SCSI commands to transfer data and status information between host and target storage systems. fc-target is enabled only with an asynchronous driver. | `string` | `"fc-initiator"` | no |
| <a name="input_wwpn_allocation_type"></a> [wwpn\_allocation\_type](#input\_wwpn\_allocation\_type) | Type of allocation selected to assign a WWPN address to the vhba.<br>* POOL - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface.<br>* STATIC - The user assigns a static mac/wwn address for the Virtual Interface. | `string` | `"POOL"` | no |
| <a name="input_wwpn_lease_moid"></a> [wwpn\_lease\_moid](#input\_wwpn\_lease\_moid) | A reference to a fcpoolLease resource. | `set(string)` | `[]` | no |
| <a name="input_wwpn_pool_moid"></a> [wwpn\_pool\_moid](#input\_wwpn\_pool\_moid) | A reference to a fcpoolPool resource. | `set(string)` | `[]` | no |
| <a name="input_wwpn_static_address"></a> [wwpn\_static\_address](#input\_wwpn\_static\_address) | The WWPN address must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx.  Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF.  To ensure uniqueness of WWN's in the SAN fabric, you are strongly encouraged to use the WWN prefix - 20:00:00:25:B5:xx:xx:xx. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Fibre Channel (vHBA) Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
