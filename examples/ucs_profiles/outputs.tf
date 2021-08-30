#______________________________________________
#
# BIOS Policy Output
#______________________________________________

output "bios_example" {
  value = module.bios_example
}

#______________________________________________
#
# Boot Order Policy Output
#______________________________________________

output "boot_legacy_san" {
  value = module.boot_legacy_san
}

output "boot_legacy_iscsi" {
  value = module.boot_legacy_iscsi
}

output "boot_uefi_cimc_dvd" {
  value = module.boot_uefi_cimc_dvd
}

output "boot_uefi_iscsi" {
  value = module.boot_uefi_iscsi
}

output "boot_uefi_kvm_dvd" {
  value = module.boot_uefi_kvm_dvd
}

output "boot_uefi_local_disk" {
  value = module.boot_uefi_local_disk
}

output "boot_uefi_san" {
  value = module.boot_uefi_san
}

#______________________________________________
#
# Device Connector Policy Output
#______________________________________________

output "device_connector" {
  value = module.device_connector
}

#______________________________________________
#
# DNS Configuration Policy Output
#______________________________________________

output "dns_example_1" {
  value = module.dns_example_1
}

output "dns_example_2" {
  value = module.dns_example_2
}

#______________________________________________
#
# IMC Access Policy Output
#______________________________________________

output "imc_access_example" {
  value = module.imc_access_example
}

#______________________________________________
#
# IPMI over LAN Policy Output
#______________________________________________

output "ipmi_example" {
  value = module.ipmi_example
}

#______________________________________________
#
# KVM Policy Output
#______________________________________________

output "kvm_example" {
  value = module.kvm_example
}

#______________________________________________
#
# Local User Policy Output
#______________________________________________

output "local_user_policy_example" {
  value = module.local_user_policy_example
}

#______________________________________________
#
# NTP Policy Output
#______________________________________________

output "ntp_example" {
  value = module.ntp_example
}

#______________________________________________
#
# SAN Connectivity Output
#______________________________________________

output "san_connectivity" {
  value = module.san_connectivity
}

#______________________________________________
#
# SD Card Policy Output
#______________________________________________

output "sd_card_example" {
  value = module.sd_card_example
}

#______________________________________________
#
# Serial over LAN Policy Output
#______________________________________________

output "sol_example" {
  value = module.sol_example
}

#______________________________________________
#
# SNMP Policy Output
#______________________________________________

output "snmp_example" {
  value = module.snmp_example
}

#______________________________________________
#
# Storage Policy Output
#______________________________________________

# output "storage_example" {
#   value = module.storage_example
# }

#______________________________________________
#
# Syslog Policy Output
#______________________________________________

output "syslog_example" {
  value = module.syslog_example
}

#______________________________________________
#
# vHBA Network Policy Output
#______________________________________________

output "vhba_network_example_a" {
  value = module.vhba_network_example_a
}

output "vhba_network_example_b" {
  value = module.vhba_network_example_b
}

#______________________________________________
#
# Virtual Media Policy Output
#______________________________________________

output "vmedia_example_1" {
  value = module.vmedia_example_1
}

#______________________________________________
#
# vHBAs Output
#______________________________________________

#______________________________________________
#
# vNICs Output
#______________________________________________

#______________________________________________
#
# vNIC Adapter Policy Output
#______________________________________________

output "ethernet_adapter_example" {
  value = module.ethernet_adapter_example
}

output "ethernet_adapter_linux_nvme_roce" {
  value = module.ethernet_adapter_linux_nvme_roce
}

output "ethernet_adapter_vmware" {
  value = module.ethernet_adapter_vmware
}

output "ethernet_adapter_windows" {
  value = module.ethernet_adapter_windows
}


#______________________________________________
#
# vNIC iSCSI Adapter Policy Output
#______________________________________________

output "iscsi_adapter_example" {
  value = module.iscsi_adapter_example
}

#______________________________________________
#
# vNIC iSCSI Target Policy Output
#______________________________________________

output "iscsi_target_example" {
  value = module.iscsi_target_example
}


#______________________________________________
#
# vNIC LAN Connectivity Policy Output
#______________________________________________

output "lan_connectivity_example" {
  value = module.lan_connectivity_example
}

#______________________________________________
#
# vNIC Network Control Policy Output
#______________________________________________

output "cdp_example" {
  value = module.cdp_example
}

output "lldp_example" {
  value = module.lldp_example
}


#______________________________________________
#
# vNIC QoS Policy Output
#______________________________________________

output "ethernet_qos" {
  value = module.ethernet_qos
}

output "standalone_ethernet_qos" {
  value = module.standalone_ethernet_qos
}

#______________________________________________
#
# vNIC VLAN Group Policy Output
#______________________________________________

output "vlan_group" {
  value = module.vlan_group
}

output "vlan_group_list" {
  value = module.vlan_group_list
}

