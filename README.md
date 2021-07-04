# Configuring Intersight Managed Mode with Cisco Intersight for Infrastructure Deployment

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

### Create Pools

This set of modules support creating the following Pool Types:

1. FC Pools.  Fibre-Channel Pools are for creating WWPN and WWNN pools.  See Module pools_fc and the example in the examples/pools directory.

2. IP Pools.  See Module pools_ip and the example in the examples/pools directory.

3. IQN Pools.  See Module pools_iqn and the example in the examples/pools directory.

4. MAC Pools.  See Module pools_mac and the example in the examples/pools directory.

5. UUID Pools.  See Module pools_uuid and the example in the examples/pools directory.

### Create Policies

This set of modules support creating the following Policy Types:

1. Adapter Configuration.  See Module policies_vic_adapter and the example in the examples/policies directory.

2. BIOS.  See Module policies_bios and the example in the examples/policies directory.

3. Boot Order.  See Module policies_boot_order and the example in the examples/policies directory.

4. Certificate Management (Under Developement).  See Module policies_certificate_management and the example in the examples/policies directory.

5. Device Connector.  See Module policies_device_connector and the example in the examples/policies directory.

6. Disk Group.  See Module policies_disk_group and the example in the examples/policies directory.

7. Ethernet Adapter.  See Module policies_vnic_adapter and the example in the examples/policies directory.

8. Ethernet Network.  See Module policies_vnic_network and the example in the examples/policies directory.

9. Ethernet Network Control.  See Module policies_vnic_network_control and the example in the examples/policies directory.

10. Ethernet Network Group.  See Module policies_vnic_network_group and the example in the examples/policies directory.

11. Ethernet QoS.  See Module policies_vnic_qos and the example in the examples/policies directory.

12. Fibre Channel Adapter.  See Module policies_vhba_adapter and the example in the examples/policies directory.

13. Fibre Channel Network.  See Module policies_vhba_network and the example in the examples/policies directory.

14. Fibre Channel QoS.  See Module policies_vhba_qos and the example in the examples/policies directory.

15. IMC Access.  See Module policies_imc_access and the example in the examples/policies directory.

16. IPMI Over LAN.  See Module policies_ipmi_over_lan and the example in the examples/policies directory.

17. iSCSI Adapter.  See Module policies_vnic_iscsi_adapter and the example in the examples/policies directory.

18. iSCSI Boot.  See Module policies_iscsi_boot and the example in the examples/policies directory.

19. iSCSI Static Target.  See Module policies_vnic_iscsi_target and the example in the examples/policies directory.

20. LAN Connectivity.  See Modules policies_vnic_lan_connectivity, policies_vnic, and the examples in the examples/policies directory.

21. LDAP.  See Modules policies_ldap_group, policies_ldap_policy, policies_ldap_provider, and the examples in the examples/policies directory.

22. Local User.  See Modules policies_local_group, policies_local_user, policies_user_policy, and the examples in the examples/policies directory.

23. Network Connectivity.  See Module policies_network_connectivity and the example in the examples/policies directory.

24. NTP.  See Module policies_ntp and the example in the examples/policies directory.

25. Persistent Memory.  See Module policies_persistent_memory and the example in the examples/policies directory.

26. SAN Connectivity.  See Module policies_vhba_san_connectivity, policies_vhba and the examples in the examples/policies directory.

27. SD Card.  See Module policies_sd_card and the example in the examples/policies directory.

28. Serial over LAN.  See Module policies_serial_over_lan and the example in the examples/policies directory.

29. SMTP.  See Module policies_smtp and the example in the examples/policies directory.

30. SNMP.  See Module policies_snmp and the example in the examples/policies directory.

31. SSH.  See Module policies_ssh and the example in the examples/policies directory.

32. Storage.  See Module policies_storage and the example in the examples/policies directory.

33. Syslog.  See Module policies_syslog and the example in the examples/policies directory.

34. Virtual KVM.  See Module policies_virtual_kvm and the example in the examples/policies directory.

35. Virtual Media.  See Module policies_virtual_media and the example in the examples/policies directory.

Domain Specific Policies

1. Flow Control.  See Module domain_flow_control and the example in the examples/domain directory.

2. Link Aggregation.  See Module domain_link_aggregation and the example in the examples/domain directory.

3. Link Control.  See Module domain_link_control and the example in the examples/domain directory.

4. Multicast.  See Module domain_multicast and the example in the examples/domain directory.

5. Port Policy.  See Modules domain_port_mode, domain_port_policy, domain_port_server, domain_uplink_lan, domain_uplink_lan_port_channel, domain_uplink_san, domain_uplink_san_port_channel,  and the examples in the examples/domain directory.

6. Switch Control.  See Module domain_switch_control and the example in the examples/domain directory.

7. System QoS.  See Module domain_system_qos and the example in the examples/domain directory.

8. VLAN Policy.  See Module domain_vlan, domain_vlan_policy, and the examples in the examples/domain directory.

9. VSAN Policy.  See Module domain_vsan, domain_vsan_policy, and the examples in the examples/domain directory.

### Deploy UCS Domains in IMM Mode

1. UCS Domain Profile.  See Modules domain_profile_switch, domain_profile_cluster, and the examples in the examples/domain directory.

### Create UCS Service Profiles and Templates and Assign to physical Servers

1. Service Profile (Under Developement).  See Module service_profile, and the example in the examples/service_profile directory.

2. Service Profile Template (Under Developement).  See Module service_profile_template, and the example in the examples/service_profile directory.
