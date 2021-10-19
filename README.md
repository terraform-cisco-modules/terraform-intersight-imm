# Terraform Intersight IMM - Infrastructure as Code

[![published](https://static.production.devnetcloud.com/codeexchange/assets/images/devnet-published.svg)](https://developer.cisco.com/codeexchange/github/repo/terraform-cisco-modules/terraform-intersight-imm)

## Contents

* Use Cases
* Create Pools
* Create Policies
* Deploy UCS Domains in IMM Mode
* Create UCS Service Profiles and Templates

### Use Cases

* Create Pools: IP, IQN, MAC, WWNN, WWPN, and UUID.
* Create Policies: Domain Policies, Mgmt Policies, Server Policies
* Create UCS Domain Profiles and attach Fabric Interconnect clusters to the profiles.
* Create Service Profiles and Templates and deploy physical infrastructure.

### Intersight Firmware Management

This set of modules support managing firmware on the following Hardware Types:

1. UCS Chassis Firmware.  See Module ucs_chassis_firmware and the example in the examples/firmware directory of ucs_chassis_firmware.tf.

2. UCS Domain Firmware.  See Module ucs_domain_firmware and the example in the examples/firmware directory of ucs_domain_firmware.tf.

3. UCS Server Firmware.  See Module ucs_server_firmware and the example in the examples/firmware directory of ucs_server_firmware.tf.

### Intersight Pools

This set of modules support creating the following Pool Types:

1. FC Pools.  Fibre-Channel Pools are for creating WWPN and WWNN pools.  See Module fc_pools and the example in the examples/pools directory.

2. IP Pools.  See Module ip_pools and the example in the examples/pools directory.

3. IQN Pools.  See Module iqn_pools and the example in the examples/pools directory.

4. MAC Pools.  See Module mac_pools and the example in the examples/pools directory.

5. UUID Pools.  See Module uuid_pools and the example in the examples/pools directory.

### Intersight Policies

This set of modules support creating the following Policy Types:

1. Adapter Configuration.  See Module adapter_configuration_policies and the example in the examples/ucs_profiles directory of adapter_configuration_policies.tf.

2. Add-Ons.  See Module addons_policies and the example in the examples/kuberetes_cluster directory of addons_policies.tf.

3. BIOS.  See Module bios_policies and the example in the examples/ucs_profiles directory of bios_policies.tf.

4. Boot Order.  See Module boot_order_policies and the example in the examples/ucs_profiles directory of boot_order_policies.tf.

5. Certificate Management.  See Module certificate_management_policies and the example in the examples/ucs_profiles directory of certificate_management_policies.tf.

6. Container Runtime.  See Module container_runtime_policies and the example in the examples/ucs_profiles directory of container_runtime_policies.tf.

7. Device Connector.  See Module device_connector_policies and the example in the examples/ucs_profiles directory of device_connector_policies.tf.

8. Disk Group.  See Module disk_group_policies and the example in the examples/ucs_profiles directory of disk_group_policies.tf.

9. Ethernet Adapter.  See Module ethernet_adapter_policies and the example in the examples/ucs_profiles directory of ethernet_adapter_policies.tf.

10. Ethernet Network.  See Module ethernet_network_policies and the example in the examples/ucs_profiles directory of ethernet_network_policies.tf.

11. Ethernet Network Control.  See Module ethernet_network_control_policies and the example in the examples/ucs_profiles directory of ethernet_network_control_policies.tf.

12. Ethernet Network Group.  See Module ethernet_network_group_policies and the example in the examples/ucs_profiles directory of ethernet_network_group_policies.tf.

13. Ethernet QoS.  See Module ethernet_qos_policies and the example in the examples/ucs_profiles directory of ethernet_qos_policies.tf.

14. Fibre Channel Adapter.  See Module fibre_channel_adapter_policies and the example in the examples/ucs_profiles directory of fibre_channel_adapter_policies.tf.

15. Fibre Channel Network.  See Module fibre_channel_network_policies and the example in the examples/ucs_profiles directory of fibre_channel_network_policies.tf.

16. Fibre Channel QoS.  See Module fibre_channel_qos_policies and the example in the examples/ucs_profiles directory of fibre_channel_qos_policies.tf.

17. IMC Access.  See Module imc_access_policies and the example in the examples/ucs_profiles directory of imc_access_policies.tf.

18. Flow Control.  See Module domain_flow_control and the example in the examples/ucs_profiles directory of flow_control_policies.tf.

19. IPMI Over LAN.  See Module ipmi_over_lan_policies and the example in the examples/ucs_profiles directory of ipmi_over_lan_policies.tf.

20. iSCSI Adapter.  See Module iscsi_adapter_policies and the example in the examples/ucs_profiles directory of iscsi_adapter_policies.tf.

21. iSCSI Boot.  See Module iscsi_boot_policies and the example in the examples/ucs_profiles directory of iscsi_boot_policies.tf.

22. iSCSI Static Target.  See Module iscsi_static_target_policies and the example in the examples/ucs_profiles directory of iscsi_static_target_policies.tf.

23. Kubernetes Cluster Add-Ons.  See Module kubernetes_cluster_addons and the example in the examples/kuberetes_cluster directory of kubernetes_cluster_profiles.tf.

24. Kubernetes Cluster Node VM Infra.  See Module kubernetes_cluster_node_vm_infra and the example in the examples/kuberetes_cluster directory of kubernetes_cluster_profiles.tf.

25. Kubernetes Node Group Profiles.  See Module kubernetes_node_group_profiles and the example in the examples/kuberetes_cluster directory of kubernetes_cluster_profiles.tf.

26. Kubernetes Cluster Add-Ons.  See Module kubernetes_version_policies and the example in the examples/kuberetes_cluster directory of kubernetes_version_policies.tf.

27. LAN Connectivity.  See Modules lan_connectivity_policies, lan_connectivity_add_vnic, and the example in the examples/ucs_profiles directory of lan_connectivity_policies.tf.

28. LDAP.  See Modules ldap_add_group, ldap_add_server, ldap_policies, and the example in the examples/ucs_profiles directory of ldap_policies.tf.

29. Link Aggregation.  See Module domain_link_aggregation and the example in the examples/ucs_profiles directory of link_aggregation_policies.tf.

30. Link Control.  See Module link_control_policies and the example in the examples/ucs_profiles directory of link_control_policies.tf.

31. Local User.  See Modules local_user_add_users, local_user_policies, and the example in the examples/ucs_profiles directory of local_user_policies.tf.

32. Multicast.  See Module multicast_policies and the example in the examples/ucs_profiles directory of multicast_policies.tf.

33. Network CIDR.  See Module network_cidr_policies and the example in the examples/kuberetes_cluster directory of network_cidr_policies.tf.

34. Network Connectivity.  See Module network_connectivity_policies and the example in the examples/ucs_profiles directory of network_connectivity_policies.tf.

35. NodeOS Configuration.  See Module nodeos_configuration_policies and the example in the examples/kuberetes_cluster directory of nodeos_configuration_policies.tf.

36. NTP.  See Module ntp_policies and the example in the examples/ucs_profiles directory of ntp_policies.tf.

37. Persistent Memory.  See Module persistent_memory_policies and the example in the examples/ucs_profiles directory of persistent_memory_policies.tf.

38. Port.  See Modules port_policies, port_ethernet_uplink, port_ethernet_uplink_port_channel, port_fc_uplink, port_fc_uplink_port_channel, port_mode, port_server_ports,  and the examples in the examples/ucs_profiles directory of port_policies.tf.

39. Power.  See Module power_policies and the example in the examples/ucs_profiles directory of power_policies.tf.

40. SAN Connectivity.  See Module san_connectivity_policies, san_connectivity_add_vhba and the example in the examples/ucs_profiles directory of san_connectivity_policies.tf.

41. SD Card.  See Modules sd_card_policies, sd_card_policies_os, and sd_card_policies_utility and the examples in the examples/ucs_profiles directory of sd_card_policies.tf.

42. Serial over LAN.  See Module serial_over_lan_policies and the example in the examples/ucs_profiles directory of serial_over_lan_policies.tf.

43. SMTP.  See Module smtp_policies and the example in the examples/ucs_profiles directory of smtp_policies.tf.

44. SNMP.  See Modules snmp_policies, snmp_policies_1_user, snmp_policies_2_users and the examples in the examples/ucs_profiles directory of snmp_policies.tf.

45. SSH.  See Module ssh_policies and the example in the examples/ucs_profiles directory of ssh_policies.tf.

46. Storage.  See Module storage_policies and the example in the examples/ucs_profiles directory of storage_policies.tf.

47. Switch Control.  See Module switch_control_policies and the example in the examples/ucs_profiles directory of switch_control_policies.tf.

48. Syslog.  See Module syslog_policies and the example in the examples/ucs_profiles directory of syslog_policies.tf.

49. System QoS.  See Module system_qos_policies and the example in the examples/ucs_profiles directory of system_qos_policies.tf.

50. Thermal.  See Module thermal_policies and the example in the examples/ucs_profiles directory of thermal_policies.tf.

51. Trusted Certificate Authorities.  See Module trusted_certificate_authorities and the example in the examples/kuberetes_cluster directory of trusted_certificate_authorities.tf.

52. Virtual KVM.  See Module virtual_kvm_policies and the example in the examples/ucs_profiles directory of virtual_kvm_policies.tf.

53. Virtual Machine Infra Config.  See Module virtual_machine_infra_config and the example in the examples/kuberetes_cluster directory of virtual_machine_infra_config.tf.

54. Virtual Machine Instance Type.  See Module virtual_machine_instance_type and the example in the examples/kuberetes_cluster directory of virtual_machine_instance_type.tf.

55. Virtual Media.  See Module virtual_media_policies and the example in the examples/ucs_profiles directory of virtual_media_policies.tf.

56. VLAN.  See Modules vlan_policies, vlan_policy_add_vlan, vlan_policy_add_vlan_list, vlan_policy_add_vlan_map, and the example in the examples/ucs_profiles directory of vlan_policies.tf.

57. VSAN.  See Modules vsan_policies, vsan_policy_add_vsan, and the example in the examples/ucs_profiles directory of vsan_policies.tf.

### Intersight Profiles and Templates

This set of modules support creating the following Profile Types:

1. Kubernetes Cluster Profile. See Module kubernetes_cluster_profiles, and the example in the examples/kuberetes_cluster directory of kubernetes_cluster_profiles.tf.

2. UCS Chassis Profile. See Module ucs_chassis_profiles, and the example in the examples/ucs_profiles directory of ucs_chassis_profiles.tf.

3. UCS Domain Profile. See Modules ucs_domain_profiles, ucs_domain_switches, and the example in the examples/ucs_profiles directory of ucs_domain_profiles.tf.

4. UCS Server Profile. See Module ucs_server_profiles, and the example in the examples/ucs_profiles directory of ucs_server_profiles.tf.

5. UCS Server Template. See Module ucs_server_templates, and the example in the examples/ucs_profiles directory of ucs_server_templates.tf.
