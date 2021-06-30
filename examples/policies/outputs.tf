#______________________________________________
#
# Boot Policy Output
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
# NTP Policy Output
#______________________________________________

output "ntp_example" {
  value = module.ntp_example
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
# Serial over LAN Policy Output
#______________________________________________

output "syslog_example" {
  value = module.syslog_example
}

#______________________________________________
#
# vNIC Adapter Policy Output
#______________________________________________

output "vnic_adapter_example" {
  value = module.vnic_adapter_example
}

output "vnic_adapter_linux_nvme_roce" {
  value = module.vnic_adapter_linux_nvme_roce
}

output "vnic_adapter_vmware" {
  value = module.vnic_adapter_vmware
}

output "vnic_adapter_windows" {
  value = module.vnic_adapter_windows
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

output "domain_vnic_qos" {
  value = module.domain_vnic_qos
}

output "standalone_vnic_qos" {
  value = module.standalone_vnic_qos
}

#______________________________________________
#
# vNIC VLAN Group Policy Output
#______________________________________________

output "vlan_group_range" {
  value = module.vlan_group_range
}

output "vlan_group_list" {
  value = module.vlan_group_list
}

