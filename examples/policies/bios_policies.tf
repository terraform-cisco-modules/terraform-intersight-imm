#____________________________________________________________
#
# Intersight BIOS Policy
# GUI Location: Policies > Create Policy > BIOS
#____________________________________________________________

#______________________________________________
#
# Example BIOS Policy
#______________________________________________

/*
Note: If a parameter isn't defined it will use "platform-default".  See the
      default example at the bottom of the page.
*/

module "bios_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/bios_policies"
  description = "Example BIOS Policy."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = {}
  tags        = var.tags

  #+++++++++++++++++++++++++++++++
  # LOM and PCIe Slots Section
  #+++++++++++++++++++++++++++++++
  cdn_support = "enabled" # CDN Support for LOM


  #+++++++++++++++++++++++++++++++
  # Memory Section
  #+++++++++++++++++++++++++++++++
  select_memory_ras_configuration = "maximum-performance" # Memory RAS Configuration


  #+++++++++++++++++++++++++++++++
  # Processor Section
  #+++++++++++++++++++++++++++++++
  cpu_energy_performance = "performance" # Energy Performance
  cpu_frequency_floor    = "enabled"     # Frequency Floor Override
  cpu_power_management   = "custom"      # Power Technology
  dram_clock_throttling  = "Performance" # DRAM Clock Throttling
  processor_c1e          = "disabled"    # Processor C1E
  processor_c3report     = "disabled"    # Processor C3 Report
  processor_c6report     = "disabled"    # Processor C6 Report
  processor_cstate       = "disabled"    # CPU C State


  #+++++++++++++++++++++++++++++++
  # Server Management Section
  #+++++++++++++++++++++++++++++++
  cdn_enable = "enabled" # Consistent Device Naming
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "bios_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/bios_policies"
  description                           = ""
  name                                  = "bios"
  org_moid                              = local.org_moid
  profiles                              = var.profiles
  tags                                  = var.tags

  #+++++++++++++++++++++++++++++++
  # Boot Options Section
  #+++++++++++++++++++++++++++++++
  boot_option_num_retry        = "platform-default" # Number of Retries
  boot_option_re_cool_down     = "platform-default" # Cool Down Time (sec)
  boot_option_retry            = "platform-default" # Boot Option Retry
  ipv4http                     = "platform-default" # IPv4 HTTP Support
  ipv4pxe                      = "platform-default" # IPv4 PXE Support
  ipv6http                     = "platform-default" # IPv6 HTTP Support
  ipv6pxe                      = "platform-default" # IPv6 PXE Support
  network_stack                = "platform-default" # Network Stack
  onboard_scu_storage_support  = "platform-default" # Onboard SCU Storage Support
  onboard_scu_storage_sw_stack = "platform-default" # Onboard SCU Storage SW Stack
  pop_support                  = "platform-default" # Power ON Password
  psata                        = "platform-default" # P-SATA Mode
  sata_mode_select             = "platform-default" # SATA Mode
  vmd_enable                   = "platform-default" # VMD Enablement


  #+++++++++++++++++++++++++++++++
  # Intel Directed IO Section
  #+++++++++++++++++++++++++++++++
  intel_vt_for_directed_io           = "platform-default" # Intel VT for Directed IO
  intel_vtd_coherency_support        = "platform-default" # Intel(R) VT-d Coherency Support
  intel_vtd_interrupt_remapping      = "platform-default" # Intel(R) VT-d interrupt Remapping
  intel_vtd_pass_through_dma_support = "platform-default" # Intel(R) VT-d PassThrough DMA Support
  intel_vtdats_support               = "platform-default" # Intel VTD ATS Support


  #+++++++++++++++++++++++++++++++
  # LOM and PCIe Slots Section
  #+++++++++++++++++++++++++++++++
  acs_control_gpu1state          = "platform-default" # ACS Control GPU 1
  acs_control_gpu2state          = "platform-default" # ACS Control GPU 2
  acs_control_gpu3state          = "platform-default" # ACS Control GPU 3
  acs_control_gpu4state          = "platform-default" # ACS Control GPU 4
  acs_control_gpu5state          = "platform-default" # ACS Control GPU 5
  acs_control_gpu6state          = "platform-default" # ACS Control GPU 6
  acs_control_gpu7state          = "platform-default" # ACS Control GPU 7
  acs_control_gpu8state          = "platform-default" # ACS Control GPU 8
  acs_control_slot11state        = "platform-default" # ACS Control Slot 11
  acs_control_slot12state        = "platform-default" # ACS Control Slot 12
  acs_control_slot13state        = "platform-default" # ACS Control Slot 13
  acs_control_slot14state        = "platform-default" # ACS Control Slot 14
  cdn_support                    = "platform-default" # CDN Support for LOM
  edpc_en                        = "platform-default" # IIO eDPC Support
  enable_clock_spread_spec       = "platform-default" # External SSC Enable
  lom_port0state                 = "platform-default" # LOM Port 0 OptionROM
  lom_port1state                 = "platform-default" # LOM Port 1 OptionROM
  lom_port2state                 = "platform-default" # LOM Port 2 OptionROM
  lom_port3state                 = "platform-default" # LOM Port 3 OptionROM
  lom_ports_all_state            = "platform-default" # All Onboard LOM Ports
  pci_option_ro_ms               = "platform-default" # All PCIe Slots OptionROM
  pci_rom_clp                    = "platform-default" # PCI ROM CLP
  pcie_ari_support               = "platform-default" # PCI ARI Support
  pcie_pll_ssc                   = "platform-default" # PCI PLL SSC
  pcie_slot_mraid1link_speed     = "platform-default" # MRAID1 Link Speed
  pcie_slot_mraid1option_rom     = "platform-default" # MRAID1 OptionROM
  pcie_slot_mraid2link_speed     = "platform-default" # MRAID2 Link Speed
  pcie_slot_mraid2option_rom     = "platform-default" # MRAID2 OptionROM
  pcie_slot_mstorraid_link_speed = "platform-default" # PCIe Slot MSTOR Link Speed
  pcie_slot_mstorraid_option_rom = "platform-default" # PCIe Slot MSTOR RAID OptionROM
  pcie_slot_nvme1link_speed      = "platform-default" # NVME 1 Link Speed
  pcie_slot_nvme1option_rom      = "platform-default" # NVME 1 OptionROM
  pcie_slot_nvme2link_speed      = "platform-default" # NVME 2 Link Speed
  pcie_slot_nvme2option_rom      = "platform-default" # NVME 2 OptionROM
  pcie_slot_nvme3link_speed      = "platform-default" # NVME 3 Link Speed
  pcie_slot_nvme3option_rom      = "platform-default" # NVME 3 OptionROM
  pcie_slot_nvme4link_speed      = "platform-default" # NVME 4 Link Speed
  pcie_slot_nvme4option_rom      = "platform-default" # NVME 4 OptionROM
  pcie_slot_nvme5link_speed      = "platform-default" # NVME 5 Link Speed
  pcie_slot_nvme5option_rom      = "platform-default" # NVME 5 OptionROM
  pcie_slot_nvme6link_speed      = "platform-default" # NVME 6 Link Speed
  pcie_slot_nvme6option_rom      = "platform-default" # NVME 6 OptionROM
  slot10link_speed               = "platform-default" # PCIe Slot:10 Link Speed
  slot10state                    = "platform-default" # Slot 10 State
  slot11link_speed               = "platform-default" # PCIe Slot:11 Link Speed
  slot11state                    = "platform-default" # Slot 11 State
  slot12link_speed               = "platform-default" # PCIe Slot:12 Link Speed
  slot12state                    = "platform-default" # Slot 12 State
  slot13state                    = "platform-default" # Slot 13 State
  slot14state                    = "platform-default" # Slot 14 State
  slot1link_speed                = "platform-default" # PCIe Slot: 1 Link Speed
  slot1state                     = "platform-default" # Slot 1 State
  slot2link_speed                = "platform-default" # PCIe Slot: 2 Link Speed
  slot2state                     = "platform-default" # Slot 2 State
  slot3link_speed                = "platform-default" # PCIe Slot: 3 Link Speed
  slot3state                     = "platform-default" # Slot 3 State
  slot4link_speed                = "platform-default" # PCIe Slot: 4 Link Speed
  slot4state                     = "platform-default" # Slot 4 State
  slot5link_speed                = "platform-default" # PCIe Slot: 5 Link Speed
  slot5state                     = "platform-default" # Slot 5 State
  slot6link_speed                = "platform-default" # PCIe Slot: 6 Link Speed
  slot6state                     = "platform-default" # Slot 6 State
  slot7link_speed                = "platform-default" # PCIe Slot: 7 Link Speed
  slot7state                     = "platform-default" # Slot 7 State
  slot8link_speed                = "platform-default" # PCIe Slot: 8 Link Speed
  slot8state                     = "platform-default" # Slot 8 State
  slot9link_speed                = "platform-default" # PCIe Slot: 9 Link Speed
  slot9state                     = "platform-default" # Slot 9 State
  slot_flom_link_speed           = "platform-default" # PCIe Slot:FLOM Link Speed
  slot_front_nvme10link_speed    = "platform-default" # Front NVME 10 Link Speed
  slot_front_nvme10option_rom    = "platform-default" # Front NVME 10 OptionROM
  slot_front_nvme11link_speed    = "platform-default" # Front NVME 11 Link Speed
  slot_front_nvme11option_rom    = "platform-default" # Front NVME 11 OptionROM
  slot_front_nvme12link_speed    = "platform-default" # Front NVME 12 Link Speed
  slot_front_nvme12option_rom    = "platform-default" # Front NVME 12 OptionROM
  slot_front_nvme13option_rom    = "platform-default" # Front NVME 13 OptionROM
  slot_front_nvme14option_rom    = "platform-default" # Front NVME 14 OptionROM
  slot_front_nvme15option_rom    = "platform-default" # Front NVME 15 OptionROM
  slot_front_nvme16option_rom    = "platform-default" # Front NVME 16 OptionROM
  slot_front_nvme17option_rom    = "platform-default" # Front NVME 17 OptionROM
  slot_front_nvme18option_rom    = "platform-default" # Front NVME 18 OptionROM
  slot_front_nvme19option_rom    = "platform-default" # Front NVME 19 OptionROM
  slot_front_nvme1link_speed     = "platform-default" # PCIe Slot:Front NVME 1 Link Speed
  slot_front_nvme1option_rom     = "platform-default" # Front NVME 1 OptionROM
  slot_front_nvme20option_rom    = "platform-default" # Front NVME 20 OptionROM
  slot_front_nvme21option_rom    = "platform-default" # Front NVME 21 OptionROM
  slot_front_nvme22option_rom    = "platform-default" # Front NVME 22 OptionROM
  slot_front_nvme23option_rom    = "platform-default" # Front NVME 23 OptionROM
  slot_front_nvme24option_rom    = "platform-default" # Front NVME 24 OptionROM
  slot_front_nvme2link_speed     = "platform-default" # PCIe Slot:Front NVME 2 Link Speed
  slot_front_nvme2option_rom     = "platform-default" # Front NVME 2 OptionROM
  slot_front_nvme3link_speed     = "platform-default" # Front NVME 3 Link Speed
  slot_front_nvme3option_rom     = "platform-default" # Front NVME 3 OptionROM
  slot_front_nvme4link_speed     = "platform-default" # Front NVME 4 Link Speed
  slot_front_nvme4option_rom     = "platform-default" # Front NVME 4 OptionROM
  slot_front_nvme5link_speed     = "platform-default" # Front NVME 5 Link Speed
  slot_front_nvme5option_rom     = "platform-default" # Front NVME 5 OptionROM
  slot_front_nvme6link_speed     = "platform-default" # Front NVME 6 Link Speed
  slot_front_nvme6option_rom     = "platform-default" # Front NVME 6 OptionROM
  slot_front_nvme7link_speed     = "platform-default" # Front NVME 7 Link Speed
  slot_front_nvme7option_rom     = "platform-default" # Front NVME 7 OptionROM
  slot_front_nvme8link_speed     = "platform-default" # Front NVME 8 Link Speed
  slot_front_nvme8option_rom     = "platform-default" # Front NVME 8 OptionROM
  slot_front_nvme9link_speed     = "platform-default" # Front NVME 9 Link Speed
  slot_front_nvme9option_rom     = "platform-default" # Front NVME 9 OptionROM
  slot_front_slot5link_speed     = "platform-default" # PCIe Slot:Front1 Link Speed
  slot_front_slot6link_speed     = "platform-default" # PCIe Slot:Front2 Link Speed
  slot_gpu1state                 = "platform-default" # GPU 1 OptionROM
  slot_gpu2state                 = "platform-default" # GPU 2 OptionROM
  slot_gpu3state                 = "platform-default" # GPU 3 OptionROM
  slot_gpu4state                 = "platform-default" # GPU 4 OptionROM
  slot_gpu5state                 = "platform-default" # GPU 5 OptionROM
  slot_gpu6state                 = "platform-default" # GPU 6 OptionROM
  slot_gpu7state                 = "platform-default" # GPU 7 OptionROM
  slot_gpu8state                 = "platform-default" # GPU 8 OptionROM
  slot_hba_link_speed            = "platform-default" # PCIe Slot:HBA Link Speed
  slot_hba_state                 = "platform-default" # PCIe Slot:HBA OptionROM
  slot_lom1link                  = "platform-default" # PCIe LOM:1 Link
  slot_lom2link                  = "platform-default" # PCIe LOM:2 Link
  slot_mezz_state                = "platform-default" # Slot Mezz State
  slot_mlom_link_speed           = "platform-default" # PCIe Slot:MLOM Link Speed
  slot_mlom_state                = "platform-default" # PCIe Slot MLOM OptionROM
  slot_mraid_link_speed          = "platform-default" # MRAID Link Speed
  slot_mraid_state               = "platform-default" # PCIe Slot MRAID OptionROM
  slot_n10state                  = "platform-default" # PCIe Slot N10 OptionROM
  slot_n11state                  = "platform-default" # PCIe Slot N11 OptionROM
  slot_n12state                  = "platform-default" # PCIe Slot N12 OptionROM
  slot_n13state                  = "platform-default" # PCIe Slot N13 OptionROM
  slot_n14state                  = "platform-default" # PCIe Slot N14 OptionROM
  slot_n15state                  = "platform-default" # PCIe Slot N15 OptionROM
  slot_n16state                  = "platform-default" # PCIe Slot N16 OptionROM
  slot_n17state                  = "platform-default" # PCIe Slot N17 OptionROM
  slot_n18state                  = "platform-default" # PCIe Slot N18 OptionROM
  slot_n19state                  = "platform-default" # PCIe Slot N19 OptionROM
  slot_n1state                   = "platform-default" # PCIe Slot N1 OptionROM
  slot_n20state                  = "platform-default" # PCIe Slot N20 OptionROM
  slot_n21state                  = "platform-default" # PCIe Slot N21 OptionROM
  slot_n22state                  = "platform-default" # PCIe Slot N22 OptionROM
  slot_n23state                  = "platform-default" # PCIe Slot N23 OptionROM
  slot_n24state                  = "platform-default" # PCIe Slot N24 OptionROM
  slot_n2state                   = "platform-default" # PCIe Slot N2 OptionROM
  slot_n3state                   = "platform-default" # PCIe Slot N3 OptionROM
  slot_n4state                   = "platform-default" # PCIe Slot N4 OptionROM
  slot_n5state                   = "platform-default" # PCIe Slot N5 OptionROM
  slot_n6state                   = "platform-default" # PCIe Slot N6 OptionROM
  slot_n7state                   = "platform-default" # PCIe Slot N7 OptionROM
  slot_n8state                   = "platform-default" # PCIe Slot N8 OptionROM
  slot_n9state                   = "platform-default" # PCIe Slot N9 OptionROM
  slot_raid_link_speed           = "platform-default" # RAID Link Speed
  slot_raid_state                = "platform-default" # PCIe Slot RAID OptionROM
  slot_rear_nvme1link_speed      = "platform-default" # PCIe Slot:Rear NVME 1 Link Speed
  slot_rear_nvme1state           = "platform-default" # PCIe Slot:Rear NVME 1 OptionROM
  slot_rear_nvme2link_speed      = "platform-default" # PCIe Slot:Rear NVME 2 Link Speed
  slot_rear_nvme2state           = "platform-default" # PCIe Slot:Rear NVME 2 OptionROM
  slot_rear_nvme3link_speed      = "platform-default" # PCIe Slot:Rear NVME 3 Link Speed
  slot_rear_nvme3state           = "platform-default" # PCIe Slot:Rear NVME 3 OptionROM
  slot_rear_nvme4link_speed      = "platform-default" # PCIe Slot:Rear NVME 4 Link Speed
  slot_rear_nvme4state           = "platform-default" # PCIe Slot:Rear NVME 4 OptionROM
  slot_rear_nvme5state           = "platform-default" # PCIe Slot:Rear NVME 5 OptionROM
  slot_rear_nvme6state           = "platform-default" # PCIe Slot:Rear NVME 6 OptionROM
  slot_rear_nvme7state           = "platform-default" # PCIe Slot:Rear NVME 7 OptionROM
  slot_rear_nvme8state           = "platform-default" # PCIe Slot:Rear NVME 8 OptionROM
  slot_riser1link_speed          = "platform-default" # PCIe Slot:Riser1 Link Speed
  slot_riser1slot1link_speed     = "platform-default" # PCIe Slot:Riser1 Slot1 Link Speed
  slot_riser1slot2link_speed     = "platform-default" # PCIe Slot:Riser2 Slot1 Link Speed
  slot_riser1slot3link_speed     = "platform-default" # PCIe Slot:Riser3 Slot1 Link Speed
  slot_riser2link_speed          = "platform-default" # PCIe Slot:Riser2 Link Speed
  slot_riser2slot4link_speed     = "platform-default" # PCIe Slot:Riser2 Slot4 Link Speed
  slot_riser2slot5link_speed     = "platform-default" # PCIe Slot:Riser2 Slot5 Link Speed
  slot_riser2slot6link_speed     = "platform-default" # PCIe Slot:Riser2 Slot6 Link Speed
  slot_sas_state                 = "platform-default" # PCIe Slot:SAS OptionROM
  slot_ssd_slot1link_speed       = "platform-default" # PCIe Slot:FrontSSD1 Link Speed
  slot_ssd_slot2link_speed       = "platform-default" # PCIe Slot:FrontSSD2 Link Speed


  #+++++++++++++++++++++++++++++++
  # Main Section
  #+++++++++++++++++++++++++++++++
  post_error_pause = "platform-default" # POST Error Pause
  tpm_support      = "platform-default" # TPM Support


  #+++++++++++++++++++++++++++++++
  # Memory Section
  #+++++++++++++++++++++++++++++++
  advanced_mem_test                     = "platform-default" # Enhanced Memory Test
  bme_dma_mitigation                    = "platform-default" # BME DMA Mitigation
  burst_and_postponed_refresh           = "platform-default" # Burst and Postponed Refresh
  cbs_cmn_cpu_smee                      = "platform-default" # CPU SMEE
  cbs_cmn_gnb_nb_iommu                  = "platform-default" # IOMMU
  cbs_cmn_mem_ctrl_bank_group_swap_ddr4 = "platform-default" # Bank Group Swap
  cbs_cmn_mem_map_bank_interleave_ddr4  = "platform-default" # Chipset Interleave
  cbs_dbg_cpu_snp_mem_cover             = "platform-default" # SNP Memory Coverage
  cbs_dbg_cpu_snp_mem_size_cover        = "platform-default" # SNP Memory Size to Cover in MiB
  cbs_df_cmn_dram_nps                   = "platform-default" # NUMA Nodes per Socket
  cbs_df_cmn_mem_intlv                  = "platform-default" # AMD Memory Interleaving
  cbs_df_cmn_mem_intlv_size             = "platform-default" # AMD Memory Interleaving Size
  cbs_sev_snp_support                   = "platform-default" # SEV-SNP Support
  cke_low_policy                        = "platform-default" # CKE Low Policy
  cr_qos                                = "platform-default" # CR QoS
  crfastgo_config                       = "platform-default" # CR FastGo Config
  dcpmm_firmware_downgrade              = "platform-default" # DCPMM Firmware Downgrade
  dram_refresh_rate                     = "platform-default" # DRAM Refresh Rate
  dram_sw_thermal_throttling            = "platform-default" # DRAM SW Thermal Throttling
  eadr_support                          = "platform-default" # eADR Support
  lv_ddr_mode                           = "platform-default" # Low Voltage DDR Mode
  memory_bandwidth_boost                = "platform-default" # Memory Bandwidth Boost
  memory_refresh_rate                   = "platform-default" # Memory Refresh Rate
  memory_size_limit                     = "platform-default" # Memory Size Limit in GiB
  memory_thermal_throttling             = "platform-default" # Memory Thermal Throttling Mode
  mirroring_mode                        = "platform-default" # Mirroring Mode
  numa_optimized                        = "platform-default" # NUMA Optimized
  nvmdimm_perform_config                = "platform-default" # NVM Performance Setting
  operation_mode                        = "platform-default" # Operation Mode
  panic_high_watermark                  = "platform-default" # Panic and High Watermark
  partial_cache_line_sparing            = "platform-default" # Partial Cache Line Sparing
  partial_mirror_mode_config            = "platform-default" # Partial Memory Mirror Mode
  partial_mirror_percent                = "platform-default" # Partial Mirror Percentage
  partial_mirror_value1                 = "platform-default" # Partial Mirror1 Size in GiB
  partial_mirror_value2                 = "platform-default" # Partial Mirror2 Size in GiB
  partial_mirror_value3                 = "platform-default" # Partial Mirror3 Size in GiB
  partial_mirror_value4                 = "platform-default" # Partial Mirror4 Size in GiB
  pc_ie_ras_support                     = "platform-default" # PCIe RAS Support
  post_package_repair                   = "platform-default" # Post Package Repair
  select_memory_ras_configuration       = "platform-default" # Memory RAS Configuration
  select_ppr_type                       = "platform-default" # PPR Type
  sev                                   = "platform-default" # Secured Encrypted Virtualization
  smee                                  = "platform-default" # SMEE
  snoopy_mode_for2lm                    = "platform-default" # Snoopy Mode for 2LM
  snoopy_mode_for_ad                    = "platform-default" # Snoopy Mode for AD
  sparing_mode                          = "platform-default" # Sparing Mode
  tsme                                  = "platform-default" # Transparent Secure Memory Encryption
  uma_based_clustering                  = "platform-default" # UMA Based Clustering
  vol_memory_mode                       = "platform-default" # Volatile Memory Mode

  #+++++++++++++++++++++++++++++++
  # PCI Section
  #+++++++++++++++++++++++++++++++
  aspm_support               = "platform-default" # ASPM Support
  ioh_resource               = "platform-default" # IOH Resource Allocation
  memory_mapped_io_above4gb  = "platform-default" # Memory Mapped IO Above 4GiB
  mmcfg_base                 = "platform-default" # MMCFG BASE
  onboard10gbit_lom          = "platform-default" # Onboard 10Gbit LOM
  onboard_gbit_lom           = "platform-default" # Onboard Gbit LOM
  pc_ie_ssd_hot_plug_support = "platform-default" # NVMe SSD Hot-Plug Support
  sr_iov                     = "platform-default" # SR-IOV Support
  vga_priority               = "platform-default" # VGA Priority


  #+++++++++++++++++++++++++++++++
  # Power and Performance Section
  #+++++++++++++++++++++++++++++++
  cbs_cmn_cpu_cpb                    = "platform-default" # Core Performance Boost
  cbs_cmn_cpu_global_cstate_ctrl     = "platform-default" # Global C State Control
  cbs_cmn_cpu_l1stream_hw_prefetcher = "platform-default" # L1 Stream HW Prefetcher
  cbs_cmn_cpu_l2stream_hw_prefetcher = "platform-default" # L2 Stream HW Prefetcher
  cbs_cmn_determinism_slider         = "platform-default" # Determinism Slider
  cbs_cmn_efficiency_mode_en         = "platform-default" # Efficiency Mode Enable
  cbs_cmn_gnb_smucppc                = "platform-default" # CPPC
  cbs_cmnc_tdp_ctl                   = "platform-default" # cTDP Control


  #+++++++++++++++++++++++++++++++
  # Processor Section
  #+++++++++++++++++++++++++++++++
  adjacent_cache_line_prefetch      = "platform-default" # Adjacent Cache Line Prefetcher
  altitude                          = "platform-default" # Altitude
  auto_cc_state                     = "platform-default" # Autonomous Core C State
  autonumous_cstate_enable          = "platform-default" # CPU Autonomous C State
  boot_performance_mode             = "platform-default" # Boot Performance Mode
  cbs_cmn_apbdis                    = "platform-default" # APBDIS
  cbs_cmn_cpu_gen_downcore_ctrl     = "platform-default" # Downcore Control
  cbs_cmn_cpu_streaming_stores_ctrl = "platform-default" # Streaming Stores Control
  cbs_cmn_fixed_soc_pstate          = "platform-default" # Fixed SOC P-State
  cbs_cmn_gnb_smu_df_cstates        = "platform-default" # DF C-States
  cbs_cpu_ccd_ctrl_ssp              = "platform-default" # CCD Control
  cbs_cpu_core_ctrl                 = "platform-default" # CPU Downcore Control
  cbs_cpu_smt_ctrl                  = "platform-default" # CPU SMT Mode
  cbs_df_cmn_acpi_srat_l3numa       = "platform-default" # ACPI SRAT L3 Cache As NUMA Domain
  channel_inter_leave               = "platform-default" # Channel Interleaving
  cisco_xgmi_max_speed              = "platform-default" # Cisco xGMI Max Speed
  closed_loop_therm_throtl          = "platform-default" # Closed Loop Thermal Throttling
  cmci_enable                       = "platform-default" # Processor CMCI
  config_tdp                        = "platform-default" # Config TDP
  config_tdp_level                  = "platform-default" # Configurable TDP Level
  core_multi_processing             = "platform-default" # Core Multi Processing
  cpu_energy_performance            = "platform-default" # Energy Performance
  cpu_frequency_floor               = "platform-default" # Frequency Floor Override
  cpu_performance                   = "platform-default" # CPU Performance
  cpu_power_management              = "platform-default" # Power Technology
  demand_scrub                      = "platform-default" # Demand Scrub
  direct_cache_access               = "platform-default" # Direct Cache Access Support
  dram_clock_throttling             = "platform-default" # DRAM Clock Throttling
  energy_efficient_turbo            = "platform-default" # Energy Efficient Turbo
  eng_perf_tuning                   = "platform-default" # Energy Performance Tuning
  enhanced_intel_speed_step_tech    = "platform-default" # Enhanced Intel Speedstep(R) Technology
  epp_enable                        = "platform-default" # Processor EPP Enable
  epp_profile                       = "platform-default" # EPP Profile
  execute_disable_bit               = "platform-default" # Execute Disable Bit
  extended_apic                     = "platform-default" # Local X2 Apic
  hardware_prefetch                 = "platform-default" # Hardware Prefetcher
  hwpm_enable                       = "platform-default" # CPU Hardware Power Management
  imc_interleave                    = "platform-default" # IMC Interleaving
  intel_dynamic_speed_select        = "platform-default" # Intel Dynamic Speed Select
  intel_hyper_threading_tech        = "platform-default" # Intel HyperThreading Tech
  intel_speed_select                = "platform-default" # Intel Speed Select
  intel_turbo_boost_tech            = "platform-default" # Intel Turbo Boost Tech
  intel_virtualization_technology   = "platform-default" # Intel(R) VT
  ioh_error_enable                  = "platform-default" # IIO Error Enable
  ip_prefetch                       = "platform-default" # DCU IP Prefetcher
  kti_prefetch                      = "platform-default" # KTI Prefetch
  llc_prefetch                      = "platform-default" # LLC Prefetch
  memory_inter_leave                = "platform-default" # Intel Memory Interleaving
  package_cstate_limit              = "platform-default" # Package C State Limit
  patrol_scrub                      = "platform-default" # Patrol Scrub
  patrol_scrub_duration             = "platform-default" # Patrol Scrub Interval
  processor_c1e                     = "platform-default" # Processor C1E
  processor_c3report                = "platform-default" # Processor C3 Report
  processor_c6report                = "platform-default" # Processor C6 Report
  processor_cstate                  = "platform-default" # CPU C State
  pstate_coord_type                 = "platform-default" # P-State Coordination
  pwr_perf_tuning                   = "platform-default" # Power Performance Tuning
  qpi_link_speed                    = "platform-default" # UPI Link Frequency Select
  rank_inter_leave                  = "platform-default" # Rank Interleaving
  single_pctl_enable                = "platform-default" # Single PCTL
  smt_mode                          = "platform-default" # SMT Mode
  snc                               = "platform-default" # Sub Numa Clustering
  streamer_prefetch                 = "platform-default" # DCU Streamer Prefetch
  svm_mode                          = "platform-default" # SVM Mode
  ufs_disable                       = "platform-default" # Uncore Frequency Scaling
  work_load_config                  = "platform-default" # Workload Configuration
  xpt_prefetch                      = "platform-default" # XPT Prefetch


  #+++++++++++++++++++++++++++++++
  # QPI Section
  #+++++++++++++++++++++++++++++++
  qpi_link_frequency = "platform-default" # QPI Link Frequency Select
  qpi_snoop_mode     = "platform-default" # QPI Snoop Mode

  #+++++++++++++++++++++++++++++++
  # Serial Port Section
  #+++++++++++++++++++++++++++++++
  serial_port_aenable = "platform-default" # Serial A Enable

  #+++++++++++++++++++++++++++++++
  # Server Management Section
  #+++++++++++++++++++++++++++++++
  assert_nmi_on_perr              = "platform-default" # Assert NMI on PERR
  assert_nmi_on_serr              = "platform-default" # Assert NMI on SERR
  baud_rate                       = "platform-default" # Baud Rate
  cdn_enable                      = "platform-default" # Consistent Device Naming
  cisco_adaptive_mem_training     = "platform-default" # Adaptive Memory Training
  cisco_debug_level               = "platform-default" # BIOS Techlog Level
  cisco_oprom_launch_optimization = "platform-default" # OptionROM Launch Optimization
  console_redirection             = "platform-default" # Console Redirection
  flow_control                    = "platform-default" # Flow Control
  frb2enable                      = "platform-default" # FRB-2 Timer
  legacy_os_redirection           = "platform-default" # Legacy OS Redirection
  os_boot_watchdog_timer          = "platform-default" # OS Boot Watchdog Timer
  os_boot_watchdog_timer_policy   = "platform-default" # OS Boot Watchdog Timer Policy
  os_boot_watchdog_timer_timeout  = "platform-default" # OS Boot Watchdog Timer Timeout
  out_of_band_mgmt_port           = "platform-default" # Out-of-Band Mgmt Port
  putty_key_pad                   = "platform-default" # Putty KeyPad
  redirection_after_post          = "platform-default" # Redirection After BIOS POST
  terminal_type                   = "platform-default" # Terminal Type
  ucsm_boot_order_rule            = "platform-default" # Boot Order Rules


  #+++++++++++++++++++++++++++++++
  # Trusted Platform Section
  #+++++++++++++++++++++++++++++++
  enable_mktme                    = "platform-default" # Multikey Total Memory Encryption (MK-TME)
  enable_sgx                      = "platform-default" # Software Guard Extensions
  enable_tme                      = "platform-default" # Total Memory Encryption
  epoch_update                    = "platform-default" # Select Owner EPOCH Input Type
  sgx_auto_registration_agent     = "platform-default" # SGX Auto MP Registration Agent
  sgx_epoch0                      = "platform-default" # SGX Epoch 0
  sgx_epoch1                      = "platform-default" # SGX Epoch 1
  sgx_factory_reset               = "platform-default" # SGX Factory Reset
  sgx_le_pub_key_hash0            = "platform-default" # SGX PubKey Hash0
  sgx_le_pub_key_hash1            = "platform-default" # SGX PubKey Hash1
  sgx_le_pub_key_hash2            = "platform-default" # SGX PubKey Hash2
  sgx_le_pub_key_hash3            = "platform-default" # SGX PubKey Hash3
  sgx_le_wr                       = "platform-default" # SGX Write Eanble
  sgx_package_info_in_band_access = "platform-default" # SGX Package Information In-Band Access
  sgx_qos                         = "platform-default" # SGX QoS
  tpm_control                     = "platform-default" # Trusted Platform Module State
  tpm_pending_operation           = "platform-default" # TPM Pending Operation
  txt_support                     = "platform-default" # Intel Trusted Execution Technology Support


  #+++++++++++++++++++++++++++++++
  # USB Section
  #+++++++++++++++++++++++++++++++
  all_usb_devices          = "platform-default" # All USB Devices
  legacy_usb_support       = "platform-default" # Legacy USB Support
  make_device_non_bootable = "platform-default" # Make Device Non Bootable
  pch_usb30mode            = "platform-default" # xHCI Mode
  usb_emul6064             = "platform-default" # Port 60/64 Emulation
  usb_port_front           = "platform-default" # USB Port Front
  usb_port_internal        = "platform-default" # USB Port Internal
  usb_port_kvm             = "platform-default" # USB Port KVM
  usb_port_rear            = "platform-default" # USB Port Rear
  usb_port_sd_card         = "platform-default" # USB Port SD Card
  usb_port_vmedia          = "platform-default" # USB Port VMedia
  usb_xhci_support         = "platform-default" # XHCI Legacy Support
}

*/
