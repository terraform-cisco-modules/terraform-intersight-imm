# Intersight Policies and Profiles Examples

## This folder contains examples of how to consume profiles and policies.  This is not meant to be a working deployment

### Examples in this Directory

* Adapter Configuration
* BIOS
* Boot Order
* Certificate Management (Under Developement)
* Device Connector
* Disk Group
* Ethernet Adapter
* Ethernet Network
* Ethernet Network Control
* Ethernet Network Group
* Ethernet QoS
* Fibre Channel Adapter
* Fibre Channel Network
* Fibre Channel QoS
* Flow Control Policy
* IMC Access
* IPMI Over LAN
* iSCSI Adapter
* iSCSI Boot
* iSCSI Static Target
* LAN Connectivity
    vNIC
* LDAP
    LDAP Group
    LDAP Policy
    LDAP Provider
* Link Aggregation Policy
* Link Control Policy
* Local User
    Local User
    Local User Policy
* Multicast Policy
* Network Connectivity (DNS)
* NTP
* Persistent Memory
* Port Policy with:
    Port Mode
    LAN Uplink
    LAN Uplink Port-Channel
    SAN Uplink
    SAN Uplink Port-Channel
    Server Port
* SAN Connectivity
    vHBA
* SD Card
* Serial Over LAN
* SMTP
* SNMP
* SSH
* Storage
* Switch Control
rm * Syslog
* System QoS Policy
* Virtual KVM
* Virtual Media
* UCS Domain Profile
* UCS Domain Profile Switch
* UCS Server Profile
* UCS Server Template
* VLAN Policy
    VLAN - Range and list examples for VLAN Creation
* VSAN Policy
    VSAN - Examples for Fabric A and Fabric B assignments

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | 1.0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | 1.0.12 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_adapter_configuration_example"></a> [adapter\_configuration\_example](#module\_adapter\_configuration\_example) | terraform-cisco-modules/imm/intersight//modules/adapter_configuration_policies | >=0.9.6 |
| <a name="module_basic_storage_example"></a> [basic\_storage\_example](#module\_basic\_storage\_example) | ../../../modules/storage_policies | n/a |
| <a name="module_bios_example"></a> [bios\_example](#module\_bios\_example) | terraform-cisco-modules/imm/intersight//modules/bios_policies | >=0.9.6 |
| <a name="module_boot_legacy_iscsi"></a> [boot\_legacy\_iscsi](#module\_boot\_legacy\_iscsi) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | >=0.9.6 |
| <a name="module_boot_legacy_san"></a> [boot\_legacy\_san](#module\_boot\_legacy\_san) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | n/a |
| <a name="module_boot_uefi_cimc_dvd"></a> [boot\_uefi\_cimc\_dvd](#module\_boot\_uefi\_cimc\_dvd) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | n/a |
| <a name="module_boot_uefi_iscsi"></a> [boot\_uefi\_iscsi](#module\_boot\_uefi\_iscsi) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | n/a |
| <a name="module_boot_uefi_kvm_dvd"></a> [boot\_uefi\_kvm\_dvd](#module\_boot\_uefi\_kvm\_dvd) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | n/a |
| <a name="module_boot_uefi_local_disk"></a> [boot\_uefi\_local\_disk](#module\_boot\_uefi\_local\_disk) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | n/a |
| <a name="module_boot_uefi_san"></a> [boot\_uefi\_san](#module\_boot\_uefi\_san) | terraform-cisco-modules/imm/intersight//modules/boot_order_policies | n/a |
| <a name="module_cdp_example"></a> [cdp\_example](#module\_cdp\_example) | terraform-cisco-modules/imm/intersight//modules/ethernet_network_control_policies | >=0.9.6 |
| <a name="module_device_connector"></a> [device\_connector](#module\_device\_connector) | terraform-cisco-modules/imm/intersight//modules/device_connector_policies | >=0.9.6 |
| <a name="module_dns_example_1"></a> [dns\_example\_1](#module\_dns\_example\_1) | terraform-cisco-modules/imm/intersight//modules/network_connectivity_policies | >=0.9.6 |
| <a name="module_dns_example_2"></a> [dns\_example\_2](#module\_dns\_example\_2) | terraform-cisco-modules/imm/intersight//modules/network_connectivity_policies | >=0.9.6 |
| <a name="module_ethenret_uplink_example_a"></a> [ethenret\_uplink\_example\_a](#module\_ethenret\_uplink\_example\_a) | terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink | n/a |
| <a name="module_ethernet_adapter_example"></a> [ethernet\_adapter\_example](#module\_ethernet\_adapter\_example) | terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies | >=0.9.6 |
| <a name="module_ethernet_adapter_linux_nvme_roce"></a> [ethernet\_adapter\_linux\_nvme\_roce](#module\_ethernet\_adapter\_linux\_nvme\_roce) | terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies | n/a |
| <a name="module_ethernet_adapter_vmware"></a> [ethernet\_adapter\_vmware](#module\_ethernet\_adapter\_vmware) | terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies | n/a |
| <a name="module_ethernet_adapter_windows"></a> [ethernet\_adapter\_windows](#module\_ethernet\_adapter\_windows) | terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies | n/a |
| <a name="module_ethernet_network_example"></a> [ethernet\_network\_example](#module\_ethernet\_network\_example) | terraform-cisco-modules/imm/intersight//modules/ethernet_network_policies | >=0.9.6 |
| <a name="module_ethernet_qos"></a> [ethernet\_qos](#module\_ethernet\_qos) | terraform-cisco-modules/imm/intersight//modules/ethernet_qos_policies | >=0.9.6 |
| <a name="module_ethernet_uplink_example_b"></a> [ethernet\_uplink\_example\_b](#module\_ethernet\_uplink\_example\_b) | terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink | n/a |
| <a name="module_ethernet_uplink_port_channel_example_a"></a> [ethernet\_uplink\_port\_channel\_example\_a](#module\_ethernet\_uplink\_port\_channel\_example\_a) | terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink_port_channel | n/a |
| <a name="module_ethernet_uplink_port_channel_example_b"></a> [ethernet\_uplink\_port\_channel\_example\_b](#module\_ethernet\_uplink\_port\_channel\_example\_b) | terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink_port_channel | n/a |
| <a name="module_fc_uplink_example_a"></a> [fc\_uplink\_example\_a](#module\_fc\_uplink\_example\_a) | terraform-cisco-modules/imm/intersight//modules/port_fc_uplink | n/a |
| <a name="module_fc_uplink_port_channel_example_a"></a> [fc\_uplink\_port\_channel\_example\_a](#module\_fc\_uplink\_port\_channel\_example\_a) | terraform-cisco-modules/imm/intersight//modules/port_fc_uplink_port_channel | n/a |
| <a name="module_fc_uplink_port_channel_example_b"></a> [fc\_uplink\_port\_channel\_example\_b](#module\_fc\_uplink\_port\_channel\_example\_b) | terraform-cisco-modules/imm/intersight//modules/port_fc_uplink_port_channel | n/a |
| <a name="module_fibre_channel_qos_example_1"></a> [fibre\_channel\_qos\_example\_1](#module\_fibre\_channel\_qos\_example\_1) | terraform-cisco-modules/imm/intersight//modules/fibre_channel_qos_policies | >=0.9.6 |
| <a name="module_fibre_channel_qos_example_2"></a> [fibre\_channel\_qos\_example\_2](#module\_fibre\_channel\_qos\_example\_2) | terraform-cisco-modules/imm/intersight//modules/fibre_channel_qos_policies | >=0.9.6 |
| <a name="module_flow_control_example"></a> [flow\_control\_example](#module\_flow\_control\_example) | terraform-cisco-modules/imm/intersight//modules/flow_control_policies | >=0.9.6 |
| <a name="module_imc_access_example"></a> [imc\_access\_example](#module\_imc\_access\_example) | terraform-cisco-modules/imm/intersight//modules/imc_access_policies | >=0.9.6 |
| <a name="module_ipmi_example"></a> [ipmi\_example](#module\_ipmi\_example) | terraform-cisco-modules/imm/intersight//modules/ipmi_over_lan_policies | >=0.9.6 |
| <a name="module_iscsi_adapter_example"></a> [iscsi\_adapter\_example](#module\_iscsi\_adapter\_example) | terraform-cisco-modules/imm/intersight//modules/iscsi_adapter_policies | >=0.9.6 |
| <a name="module_iscsi_boot_example"></a> [iscsi\_boot\_example](#module\_iscsi\_boot\_example) | terraform-cisco-modules/imm/intersight//modules/iscsi_boot_policies | >=0.9.6 |
| <a name="module_iscsi_target_example"></a> [iscsi\_target\_example](#module\_iscsi\_target\_example) | terraform-cisco-modules/imm/intersight//modules/iscsi_static_target_policies | >=0.9.6 |
| <a name="module_kvm_example"></a> [kvm\_example](#module\_kvm\_example) | terraform-cisco-modules/imm/intersight//modules/virtual_kvm_policies | n/a |
| <a name="module_lan_connectivity_example"></a> [lan\_connectivity\_example](#module\_lan\_connectivity\_example) | terraform-cisco-modules/imm/intersight//modules/lan_connectivity_policies | >=0.9.6 |
| <a name="module_ldap_group_1"></a> [ldap\_group\_1](#module\_ldap\_group\_1) | terraform-cisco-modules/imm/intersight//modules/ldap_add_group | >=0.9.6 |
| <a name="module_ldap_group_2"></a> [ldap\_group\_2](#module\_ldap\_group\_2) | terraform-cisco-modules/imm/intersight//modules/ldap_add_group | >=0.9.6 |
| <a name="module_ldap_policy_example"></a> [ldap\_policy\_example](#module\_ldap\_policy\_example) | terraform-cisco-modules/imm/intersight//modules/ldap_policies | >=0.9.6 |
| <a name="module_ldap_provider_server1"></a> [ldap\_provider\_server1](#module\_ldap\_provider\_server1) | terraform-cisco-modules/imm/intersight//modules/ldap_add_server | >=0.9.6 |
| <a name="module_ldap_provider_server2"></a> [ldap\_provider\_server2](#module\_ldap\_provider\_server2) | terraform-cisco-modules/imm/intersight//modules/ldap_add_server | >=0.9.6 |
| <a name="module_link_aggregation_example"></a> [link\_aggregation\_example](#module\_link\_aggregation\_example) | terraform-cisco-modules/imm/intersight//modules/link_aggregation_policies | >=0.9.6 |
| <a name="module_link_control_example"></a> [link\_control\_example](#module\_link\_control\_example) | terraform-cisco-modules/imm/intersight//modules/link_control_policies | >=0.9.6 |
| <a name="module_lldp_example"></a> [lldp\_example](#module\_lldp\_example) | terraform-cisco-modules/imm/intersight//modules/ethernet_network_control_policies | >=0.9.6 |
| <a name="module_local_user_1"></a> [local\_user\_1](#module\_local\_user\_1) | terraform-cisco-modules/imm/intersight//modules/local_user_add_users | >=0.9.6 |
| <a name="module_local_user_2"></a> [local\_user\_2](#module\_local\_user\_2) | terraform-cisco-modules/imm/intersight//modules/local_user_add_users | >=0.9.6 |
| <a name="module_local_user_policy_example"></a> [local\_user\_policy\_example](#module\_local\_user\_policy\_example) | terraform-cisco-modules/imm/intersight//modules/local_user_policies | >=0.9.6 |
| <a name="module_m2_storage_example"></a> [m2\_storage\_example](#module\_m2\_storage\_example) | ../../../modules/storage_policies | n/a |
| <a name="module_ntp_example"></a> [ntp\_example](#module\_ntp\_example) | terraform-cisco-modules/imm/intersight//modules/ntp_policies | >=0.9.6 |
| <a name="module_persistent_memory_example_1"></a> [persistent\_memory\_example\_1](#module\_persistent\_memory\_example\_1) | terraform-cisco-modules/imm/intersight//modules/persistent_memory_policies | >=0.9.6 |
| <a name="module_port_mode_example_a"></a> [port\_mode\_example\_a](#module\_port\_mode\_example\_a) | terraform-cisco-modules/imm/intersight//modules/port_mode | n/a |
| <a name="module_port_mode_example_b"></a> [port\_mode\_example\_b](#module\_port\_mode\_example\_b) | terraform-cisco-modules/imm/intersight//modules/port_mode | n/a |
| <a name="module_port_policy_example_a"></a> [port\_policy\_example\_a](#module\_port\_policy\_example\_a) | terraform-cisco-modules/imm/intersight//modules/port_policies | >=0.9.6 |
| <a name="module_port_policy_example_b"></a> [port\_policy\_example\_b](#module\_port\_policy\_example\_b) | terraform-cisco-modules/imm/intersight//modules/port_policies | >=0.9.6 |
| <a name="module_raid1_storage_example_1"></a> [raid1\_storage\_example\_1](#module\_raid1\_storage\_example\_1) | ../../../modules/storage_drive_group | n/a |
| <a name="module_raid1_storage_example_2"></a> [raid1\_storage\_example\_2](#module\_raid1\_storage\_example\_2) | ../../../modules/storage_drive_group | n/a |
| <a name="module_san_connectivity"></a> [san\_connectivity](#module\_san\_connectivity) | terraform-cisco-modules/imm/intersight//modules/san_connectivity_policies | n/a |
| <a name="module_san_uplink_example_b"></a> [san\_uplink\_example\_b](#module\_san\_uplink\_example\_b) | terraform-cisco-modules/imm/intersight//modules/port_fc_uplink | n/a |
| <a name="module_sd_card_example"></a> [sd\_card\_example](#module\_sd\_card\_example) | terraform-cisco-modules/imm/intersight//modules/sd_card_policies | n/a |
| <a name="module_server_port_example_a1"></a> [server\_port\_example\_a1](#module\_server\_port\_example\_a1) | terraform-cisco-modules/imm/intersight//modules/port_server_ports | n/a |
| <a name="module_server_port_example_a2"></a> [server\_port\_example\_a2](#module\_server\_port\_example\_a2) | terraform-cisco-modules/imm/intersight//modules/port_server_ports | n/a |
| <a name="module_server_port_example_b1"></a> [server\_port\_example\_b1](#module\_server\_port\_example\_b1) | terraform-cisco-modules/imm/intersight//modules/port_server_ports | n/a |
| <a name="module_server_port_example_b2"></a> [server\_port\_example\_b2](#module\_server\_port\_example\_b2) | terraform-cisco-modules/imm/intersight//modules/port_server_ports | n/a |
| <a name="module_smtp_example"></a> [smtp\_example](#module\_smtp\_example) | terraform-cisco-modules/imm/intersight//modules/smtp_policies | n/a |
| <a name="module_snmp_example"></a> [snmp\_example](#module\_snmp\_example) | terraform-cisco-modules/imm/intersight//modules/snmp_policies | n/a |
| <a name="module_sol_example"></a> [sol\_example](#module\_sol\_example) | terraform-cisco-modules/imm/intersight//modules/serial_over_lan_policies | n/a |
| <a name="module_ssh_example"></a> [ssh\_example](#module\_ssh\_example) | terraform-cisco-modules/imm/intersight//modules/ssh_policies | n/a |
| <a name="module_standalone_ethernet_qos"></a> [standalone\_ethernet\_qos](#module\_standalone\_ethernet\_qos) | terraform-cisco-modules/imm/intersight//modules/ethernet_qos_policies | >=0.9.6 |
| <a name="module_switch_control_example"></a> [switch\_control\_example](#module\_switch\_control\_example) | terraform-cisco-modules/imm/intersight//modules/switch_control_policies | n/a |
| <a name="module_syslog_example"></a> [syslog\_example](#module\_syslog\_example) | terraform-cisco-modules/imm/intersight//modules/syslog_policies | n/a |
| <a name="module_system_qos_example_1"></a> [system\_qos\_example\_1](#module\_system\_qos\_example\_1) | terraform-cisco-modules/imm/intersight//modules/system_qos_policies | n/a |
| <a name="module_system_qos_example_2"></a> [system\_qos\_example\_2](#module\_system\_qos\_example\_2) | terraform-cisco-modules/imm/intersight//modules/system_qos_policies | n/a |
| <a name="module_vhba_adapter_example"></a> [vhba\_adapter\_example](#module\_vhba\_adapter\_example) | terraform-cisco-modules/imm/intersight//modules/fibre_channel_adapter_policies | >=0.9.6 |
| <a name="module_vhba_network_example_2"></a> [vhba\_network\_example\_2](#module\_vhba\_network\_example\_2) | terraform-cisco-modules/imm/intersight//modules/fibre_channel_network_policies | >=0.9.6 |
| <a name="module_vhba_network_example_a"></a> [vhba\_network\_example\_a](#module\_vhba\_network\_example\_a) | terraform-cisco-modules/imm/intersight//modules/fibre_channel_network_policies | >=0.9.6 |
| <a name="module_vhba_network_example_b"></a> [vhba\_network\_example\_b](#module\_vhba\_network\_example\_b) | terraform-cisco-modules/imm/intersight//modules/fibre_channel_network_policies | >=0.9.6 |
| <a name="module_vlan_group"></a> [vlan\_group](#module\_vlan\_group) | terraform-cisco-modules/imm/intersight//modules/ethernet_network_group_policies | >=0.9.6 |
| <a name="module_vlan_group_list"></a> [vlan\_group\_list](#module\_vlan\_group\_list) | terraform-cisco-modules/imm/intersight//modules/ethernet_network_group_policies | >=0.9.6 |
| <a name="module_vmedia_example_1"></a> [vmedia\_example\_1](#module\_vmedia\_example\_1) | terraform-cisco-modules/imm/intersight//modules/virtual_media_policies | n/a |
| <a name="module_vmedia_example_2"></a> [vmedia\_example\_2](#module\_vmedia\_example\_2) | terraform-cisco-modules/imm/intersight//modules/virtual_media_policies | n/a |
| <a name="module_vsan_example_a"></a> [vsan\_example\_a](#module\_vsan\_example\_a) | terraform-cisco-modules/imm/intersight//modules/vsan_policy_add_vsan | n/a |
| <a name="module_vsan_example_b"></a> [vsan\_example\_b](#module\_vsan\_example\_b) | terraform-cisco-modules/imm/intersight//modules/vsan_policy_add_vsan | n/a |
| <a name="module_vsan_policy_example_a"></a> [vsan\_policy\_example\_a](#module\_vsan\_policy\_example\_a) | terraform-cisco-modules/imm/intersight//modules/vsan_policies | n/a |
| <a name="module_vsan_policy_example_b"></a> [vsan\_policy\_example\_b](#module\_vsan\_policy\_example\_b) | terraform-cisco-modules/imm/intersight//modules/vsan_policies | n/a |

## Resources

| Name | Type |
|------|------|
| [intersight_organization_organization.org_moid](https://registry.terraform.io/providers/CiscoDevNet/intersight/1.0.12/docs/data-sources/organization_organization) | data source |
| [terraform_remote_state.pools](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Intersight Organization. | `string` | `"default"` | no |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bios_example"></a> [bios\_example](#output\_bios\_example) | n/a |
| <a name="output_boot_legacy_iscsi"></a> [boot\_legacy\_iscsi](#output\_boot\_legacy\_iscsi) | n/a |
| <a name="output_boot_legacy_san"></a> [boot\_legacy\_san](#output\_boot\_legacy\_san) | n/a |
| <a name="output_boot_uefi_cimc_dvd"></a> [boot\_uefi\_cimc\_dvd](#output\_boot\_uefi\_cimc\_dvd) | n/a |
| <a name="output_boot_uefi_iscsi"></a> [boot\_uefi\_iscsi](#output\_boot\_uefi\_iscsi) | n/a |
| <a name="output_boot_uefi_kvm_dvd"></a> [boot\_uefi\_kvm\_dvd](#output\_boot\_uefi\_kvm\_dvd) | n/a |
| <a name="output_boot_uefi_local_disk"></a> [boot\_uefi\_local\_disk](#output\_boot\_uefi\_local\_disk) | n/a |
| <a name="output_boot_uefi_san"></a> [boot\_uefi\_san](#output\_boot\_uefi\_san) | n/a |
| <a name="output_cdp_example"></a> [cdp\_example](#output\_cdp\_example) | n/a |
| <a name="output_device_connector"></a> [device\_connector](#output\_device\_connector) | n/a |
| <a name="output_dns_example_1"></a> [dns\_example\_1](#output\_dns\_example\_1) | n/a |
| <a name="output_dns_example_2"></a> [dns\_example\_2](#output\_dns\_example\_2) | n/a |
| <a name="output_ethernet_adapter_example"></a> [ethernet\_adapter\_example](#output\_ethernet\_adapter\_example) | n/a |
| <a name="output_ethernet_adapter_linux_nvme_roce"></a> [ethernet\_adapter\_linux\_nvme\_roce](#output\_ethernet\_adapter\_linux\_nvme\_roce) | n/a |
| <a name="output_ethernet_adapter_vmware"></a> [ethernet\_adapter\_vmware](#output\_ethernet\_adapter\_vmware) | n/a |
| <a name="output_ethernet_adapter_windows"></a> [ethernet\_adapter\_windows](#output\_ethernet\_adapter\_windows) | n/a |
| <a name="output_ethernet_qos"></a> [ethernet\_qos](#output\_ethernet\_qos) | n/a |
| <a name="output_imc_access_example"></a> [imc\_access\_example](#output\_imc\_access\_example) | n/a |
| <a name="output_ipmi_example"></a> [ipmi\_example](#output\_ipmi\_example) | n/a |
| <a name="output_iscsi_adapter_example"></a> [iscsi\_adapter\_example](#output\_iscsi\_adapter\_example) | n/a |
| <a name="output_iscsi_target_example"></a> [iscsi\_target\_example](#output\_iscsi\_target\_example) | n/a |
| <a name="output_kvm_example"></a> [kvm\_example](#output\_kvm\_example) | n/a |
| <a name="output_lan_connectivity_example"></a> [lan\_connectivity\_example](#output\_lan\_connectivity\_example) | n/a |
| <a name="output_lldp_example"></a> [lldp\_example](#output\_lldp\_example) | n/a |
| <a name="output_local_user_policy_example"></a> [local\_user\_policy\_example](#output\_local\_user\_policy\_example) | n/a |
| <a name="output_ntp_example"></a> [ntp\_example](#output\_ntp\_example) | n/a |
| <a name="output_san_connectivity"></a> [san\_connectivity](#output\_san\_connectivity) | n/a |
| <a name="output_sd_card_example"></a> [sd\_card\_example](#output\_sd\_card\_example) | n/a |
| <a name="output_snmp_example"></a> [snmp\_example](#output\_snmp\_example) | n/a |
| <a name="output_sol_example"></a> [sol\_example](#output\_sol\_example) | n/a |
| <a name="output_standalone_ethernet_qos"></a> [standalone\_ethernet\_qos](#output\_standalone\_ethernet\_qos) | n/a |
| <a name="output_syslog_example"></a> [syslog\_example](#output\_syslog\_example) | n/a |
| <a name="output_vhba_network_example_a"></a> [vhba\_network\_example\_a](#output\_vhba\_network\_example\_a) | n/a |
| <a name="output_vhba_network_example_b"></a> [vhba\_network\_example\_b](#output\_vhba\_network\_example\_b) | n/a |
| <a name="output_vlan_group"></a> [vlan\_group](#output\_vlan\_group) | n/a |
| <a name="output_vlan_group_list"></a> [vlan\_group\_list](#output\_vlan\_group\_list) | n/a |
| <a name="output_vmedia_example_1"></a> [vmedia\_example\_1](#output\_vmedia\_example\_1) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
