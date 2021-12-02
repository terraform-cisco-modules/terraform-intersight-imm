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

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_multicast_example"></a> [multicast\_example](#module\_multicast\_example) | terraform-cisco-modules/imm/intersight//modules/multicast_policies | n/a |
| <a name="module_vlan_example_1"></a> [vlan\_example\_1](#module\_vlan\_example\_1) | terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan | n/a |
| <a name="module_vlan_example_2"></a> [vlan\_example\_2](#module\_vlan\_example\_2) | terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan_list | n/a |
| <a name="module_vlan_policy_example"></a> [vlan\_policy\_example](#module\_vlan\_policy\_example) | terraform-cisco-modules/imm/intersight//modules/vlan_policies | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
