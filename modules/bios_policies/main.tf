#__________________________________________________________________
#
# Intersight BIOS Policy
# GUI Location: Policies > Create Policy > BIOS
#__________________________________________________________________

resource "intersight_bios_policy" "bios" {
  description = var.description
  name        = var.name

  #+++++++++++++++++++++++++++++++
  # Boot Options Section
  #+++++++++++++++++++++++++++++++
  boot_option_num_retry        = var.boot_option_num_retry        # Number of Retries
  boot_option_re_cool_down     = var.boot_option_re_cool_down     # Cool Down Time (sec)
  boot_option_retry            = var.boot_option_retry            # Boot Option Retry
  ipv4http                     = var.ipv4http                     # IPv4 HTTP Support
  ipv4pxe                      = var.ipv4pxe                      # IPv4 PXE Support
  ipv6http                     = var.ipv6http                     # IPv6 HTTP Support
  ipv6pxe                      = var.ipv6pxe                      # IPv6 PXE Support
  network_stack                = var.network_stack                # Network Stack
  onboard_scu_storage_support  = var.onboard_scu_storage_support  # Onboard SCU Storage Support
  onboard_scu_storage_sw_stack = var.onboard_scu_storage_sw_stack # Onboard SCU Storage SW Stack
  pop_support                  = var.pop_support                  # Power ON Password
  psata                        = var.psata                        # P-SATA Mode
  sata_mode_select             = var.sata_mode_select             # SATA Mode
  vmd_enable                   = var.vmd_enable                   # VMD Enablement


  #+++++++++++++++++++++++++++++++
  # Intel Directed IO Section
  #+++++++++++++++++++++++++++++++
  intel_vt_for_directed_io           = var.intel_vt_for_directed_io           # Intel VT for Directed IO
  intel_vtd_coherency_support        = var.intel_vtd_coherency_support        # Intel(R) VT-d Coherency Support
  intel_vtd_interrupt_remapping      = var.intel_vtd_interrupt_remapping      # Intel(R) VT-d interrupt Remapping
  intel_vtd_pass_through_dma_support = var.intel_vtd_pass_through_dma_support # Intel(R) VT-d PassThrough DMA Support
  intel_vtdats_support               = var.intel_vtdats_support               # Intel VTD ATS Support


  #+++++++++++++++++++++++++++++++
  # LOM and PCIe Slots Section
  #+++++++++++++++++++++++++++++++
  acs_control_gpu1state          = var.acs_control_gpu1state          # ACS Control GPU 1
  acs_control_gpu2state          = var.acs_control_gpu2state          # ACS Control GPU 2
  acs_control_gpu3state          = var.acs_control_gpu3state          # ACS Control GPU 3
  acs_control_gpu4state          = var.acs_control_gpu4state          # ACS Control GPU 4
  acs_control_gpu5state          = var.acs_control_gpu5state          # ACS Control GPU 5
  acs_control_gpu6state          = var.acs_control_gpu6state          # ACS Control GPU 6
  acs_control_gpu7state          = var.acs_control_gpu7state          # ACS Control GPU 7
  acs_control_gpu8state          = var.acs_control_gpu8state          # ACS Control GPU 8
  acs_control_slot11state        = var.acs_control_slot11state        # ACS Control Slot 11
  acs_control_slot12state        = var.acs_control_slot12state        # ACS Control Slot 12
  acs_control_slot13state        = var.acs_control_slot13state        # ACS Control Slot 13
  acs_control_slot14state        = var.acs_control_slot14state        # ACS Control Slot 14
  cdn_support                    = var.cdn_support                    # CDN Support for LOM
  edpc_en                        = var.edpc_en                        # IIO eDPC Support
  enable_clock_spread_spec       = var.enable_clock_spread_spec       # External SSC Enable
  lom_port0state                 = var.lom_port0state                 # LOM Port 0 OptionROM
  lom_port1state                 = var.lom_port1state                 # LOM Port 1 OptionROM
  lom_port2state                 = var.lom_port2state                 # LOM Port 2 OptionROM
  lom_port3state                 = var.lom_port3state                 # LOM Port 3 OptionROM
  lom_ports_all_state            = var.lom_ports_all_state            # All Onboard LOM Ports
  pci_option_ro_ms               = var.pci_option_ro_ms               # All PCIe Slots OptionROM
  pci_rom_clp                    = var.pci_rom_clp                    # PCI ROM CLP
  pcie_ari_support               = var.pcie_ari_support               # PCI ARI Support
  pcie_pll_ssc                   = var.pcie_pll_ssc                   # PCI PLL SSC
  pcie_slot_mraid1link_speed     = var.pcie_slot_mraid1link_speed     # MRAID1 Link Speed
  pcie_slot_mraid1option_rom     = var.pcie_slot_mraid1option_rom     # MRAID1 OptionROM
  pcie_slot_mraid2link_speed     = var.pcie_slot_mraid2link_speed     # MRAID2 Link Speed
  pcie_slot_mraid2option_rom     = var.pcie_slot_mraid2option_rom     # MRAID2 OptionROM
  pcie_slot_mstorraid_link_speed = var.pcie_slot_mstorraid_link_speed # PCIe Slot MSTOR Link Speed
  pcie_slot_mstorraid_option_rom = var.pcie_slot_mstorraid_option_rom # PCIe Slot MSTOR RAID OptionROM
  pcie_slot_nvme1link_speed      = var.pcie_slot_nvme1link_speed      # NVME 1 Link Speed
  pcie_slot_nvme1option_rom      = var.pcie_slot_nvme1option_rom      # NVME 1 OptionROM
  pcie_slot_nvme2link_speed      = var.pcie_slot_nvme2link_speed      # NVME 2 Link Speed
  pcie_slot_nvme2option_rom      = var.pcie_slot_nvme2option_rom      # NVME 2 OptionROM
  pcie_slot_nvme3link_speed      = var.pcie_slot_nvme3link_speed      # NVME 3 Link Speed
  pcie_slot_nvme3option_rom      = var.pcie_slot_nvme3option_rom      # NVME 3 OptionROM
  pcie_slot_nvme4link_speed      = var.pcie_slot_nvme4link_speed      # NVME 4 Link Speed
  pcie_slot_nvme4option_rom      = var.pcie_slot_nvme4option_rom      # NVME 4 OptionROM
  pcie_slot_nvme5link_speed      = var.pcie_slot_nvme5link_speed      # NVME 5 Link Speed
  pcie_slot_nvme5option_rom      = var.pcie_slot_nvme5option_rom      # NVME 5 OptionROM
  pcie_slot_nvme6link_speed      = var.pcie_slot_nvme6link_speed      # NVME 6 Link Speed
  pcie_slot_nvme6option_rom      = var.pcie_slot_nvme6option_rom      # NVME 6 OptionROM
  slot10link_speed               = var.slot10link_speed               # PCIe Slot:10 Link Speed
  slot10state                    = var.slot10state                    # Slot 10 State
  slot11link_speed               = var.slot11link_speed               # PCIe Slot:11 Link Speed
  slot11state                    = var.slot11state                    # Slot 11 State
  slot12link_speed               = var.slot12link_speed               # PCIe Slot:12 Link Speed
  slot12state                    = var.slot12state                    # Slot 12 State
  slot13state                    = var.slot13state                    # Slot 13 State
  slot14state                    = var.slot14state                    # Slot 14 State
  slot1link_speed                = var.slot1link_speed                # PCIe Slot: 1 Link Speed
  slot1state                     = var.slot1state                     # Slot 1 State
  slot2link_speed                = var.slot2link_speed                # PCIe Slot: 2 Link Speed
  slot2state                     = var.slot2state                     # Slot 2 State
  slot3link_speed                = var.slot3link_speed                # PCIe Slot: 3 Link Speed
  slot3state                     = var.slot3state                     # Slot 3 State
  slot4link_speed                = var.slot4link_speed                # PCIe Slot: 4 Link Speed
  slot4state                     = var.slot4state                     # Slot 4 State
  slot5link_speed                = var.slot5link_speed                # PCIe Slot: 5 Link Speed
  slot5state                     = var.slot5state                     # Slot 5 State
  slot6link_speed                = var.slot6link_speed                # PCIe Slot: 6 Link Speed
  slot6state                     = var.slot6state                     # Slot 6 State
  slot7link_speed                = var.slot7link_speed                # PCIe Slot: 7 Link Speed
  slot7state                     = var.slot7state                     # Slot 7 State
  slot8link_speed                = var.slot8link_speed                # PCIe Slot: 8 Link Speed
  slot8state                     = var.slot8state                     # Slot 8 State
  slot9link_speed                = var.slot9link_speed                # PCIe Slot: 9 Link Speed
  slot9state                     = var.slot9state                     # Slot 9 State
  slot_flom_link_speed           = var.slot_flom_link_speed           # PCIe Slot:FLOM Link Speed
  slot_front_nvme10link_speed    = var.slot_front_nvme10link_speed    # Front NVME 10 Link Speed
  slot_front_nvme10option_rom    = var.slot_front_nvme10option_rom    # Front NVME 10 OptionROM
  slot_front_nvme11link_speed    = var.slot_front_nvme11link_speed    # Front NVME 11 Link Speed
  slot_front_nvme11option_rom    = var.slot_front_nvme11option_rom    # Front NVME 11 OptionROM
  slot_front_nvme12link_speed    = var.slot_front_nvme12link_speed    # Front NVME 12 Link Speed
  slot_front_nvme12option_rom    = var.slot_front_nvme12option_rom    # Front NVME 12 OptionROM
  slot_front_nvme13option_rom    = var.slot_front_nvme13option_rom    # Front NVME 13 OptionROM
  slot_front_nvme14option_rom    = var.slot_front_nvme14option_rom    # Front NVME 14 OptionROM
  slot_front_nvme15option_rom    = var.slot_front_nvme15option_rom    # Front NVME 15 OptionROM
  slot_front_nvme16option_rom    = var.slot_front_nvme16option_rom    # Front NVME 16 OptionROM
  slot_front_nvme17option_rom    = var.slot_front_nvme17option_rom    # Front NVME 17 OptionROM
  slot_front_nvme18option_rom    = var.slot_front_nvme18option_rom    # Front NVME 18 OptionROM
  slot_front_nvme19option_rom    = var.slot_front_nvme19option_rom    # Front NVME 19 OptionROM
  slot_front_nvme1link_speed     = var.slot_front_nvme1link_speed     # PCIe Slot:Front NVME 1 Link Speed
  slot_front_nvme1option_rom     = var.slot_front_nvme1option_rom     # Front NVME 1 OptionROM
  slot_front_nvme20option_rom    = var.slot_front_nvme20option_rom    # Front NVME 20 OptionROM
  slot_front_nvme21option_rom    = var.slot_front_nvme21option_rom    # Front NVME 21 OptionROM
  slot_front_nvme22option_rom    = var.slot_front_nvme22option_rom    # Front NVME 22 OptionROM
  slot_front_nvme23option_rom    = var.slot_front_nvme23option_rom    # Front NVME 23 OptionROM
  slot_front_nvme24option_rom    = var.slot_front_nvme24option_rom    # Front NVME 24 OptionROM
  slot_front_nvme2link_speed     = var.slot_front_nvme2link_speed     # PCIe Slot:Front NVME 2 Link Speed
  slot_front_nvme2option_rom     = var.slot_front_nvme2option_rom     # Front NVME 2 OptionROM
  slot_front_nvme3link_speed     = var.slot_front_nvme3link_speed     # Front NVME 3 Link Speed
  slot_front_nvme3option_rom     = var.slot_front_nvme3option_rom     # Front NVME 3 OptionROM
  slot_front_nvme4link_speed     = var.slot_front_nvme4link_speed     # Front NVME 4 Link Speed
  slot_front_nvme4option_rom     = var.slot_front_nvme4option_rom     # Front NVME 4 OptionROM
  slot_front_nvme5link_speed     = var.slot_front_nvme5link_speed     # Front NVME 5 Link Speed
  slot_front_nvme5option_rom     = var.slot_front_nvme5option_rom     # Front NVME 5 OptionROM
  slot_front_nvme6link_speed     = var.slot_front_nvme6link_speed     # Front NVME 6 Link Speed
  slot_front_nvme6option_rom     = var.slot_front_nvme6option_rom     # Front NVME 6 OptionROM
  slot_front_nvme7link_speed     = var.slot_front_nvme7link_speed     # Front NVME 7 Link Speed
  slot_front_nvme7option_rom     = var.slot_front_nvme7option_rom     # Front NVME 7 OptionROM
  slot_front_nvme8link_speed     = var.slot_front_nvme8link_speed     # Front NVME 8 Link Speed
  slot_front_nvme8option_rom     = var.slot_front_nvme8option_rom     # Front NVME 8 OptionROM
  slot_front_nvme9link_speed     = var.slot_front_nvme9link_speed     # Front NVME 9 Link Speed
  slot_front_nvme9option_rom     = var.slot_front_nvme9option_rom     # Front NVME 9 OptionROM
  slot_front_slot5link_speed     = var.slot_front_slot5link_speed     # PCIe Slot:Front1 Link Speed
  slot_front_slot6link_speed     = var.slot_front_slot6link_speed     # PCIe Slot:Front2 Link Speed
  slot_gpu1state                 = var.slot_gpu1state                 # GPU 1 OptionROM
  slot_gpu2state                 = var.slot_gpu2state                 # GPU 2 OptionROM
  slot_gpu3state                 = var.slot_gpu3state                 # GPU 3 OptionROM
  slot_gpu4state                 = var.slot_gpu4state                 # GPU 4 OptionROM
  slot_gpu5state                 = var.slot_gpu5state                 # GPU 5 OptionROM
  slot_gpu6state                 = var.slot_gpu6state                 # GPU 6 OptionROM
  slot_gpu7state                 = var.slot_gpu7state                 # GPU 7 OptionROM
  slot_gpu8state                 = var.slot_gpu8state                 # GPU 8 OptionROM
  slot_hba_link_speed            = var.slot_hba_link_speed            # PCIe Slot:HBA Link Speed
  slot_hba_state                 = var.slot_hba_state                 # PCIe Slot:HBA OptionROM
  slot_lom1link                  = var.slot_lom1link                  # PCIe LOM:1 Link
  slot_lom2link                  = var.slot_lom2link                  # PCIe LOM:2 Link
  slot_mezz_state                = var.slot_mezz_state                # Slot Mezz State
  slot_mlom_link_speed           = var.slot_mlom_link_speed           # PCIe Slot:MLOM Link Speed
  slot_mlom_state                = var.slot_mlom_state                # PCIe Slot MLOM OptionROM
  slot_mraid_link_speed          = var.slot_mraid_link_speed          # MRAID Link Speed
  slot_mraid_state               = var.slot_mraid_state               # PCIe Slot MRAID OptionROM
  slot_n10state                  = var.slot_n10state                  # PCIe Slot N10 OptionROM
  slot_n11state                  = var.slot_n11state                  # PCIe Slot N11 OptionROM
  slot_n12state                  = var.slot_n12state                  # PCIe Slot N12 OptionROM
  slot_n13state                  = var.slot_n13state                  # PCIe Slot N13 OptionROM
  slot_n14state                  = var.slot_n14state                  # PCIe Slot N14 OptionROM
  slot_n15state                  = var.slot_n15state                  # PCIe Slot N15 OptionROM
  slot_n16state                  = var.slot_n16state                  # PCIe Slot N16 OptionROM
  slot_n17state                  = var.slot_n17state                  # PCIe Slot N17 OptionROM
  slot_n18state                  = var.slot_n18state                  # PCIe Slot N18 OptionROM
  slot_n19state                  = var.slot_n19state                  # PCIe Slot N19 OptionROM
  slot_n1state                   = var.slot_n1state                   # PCIe Slot N1 OptionROM
  slot_n20state                  = var.slot_n20state                  # PCIe Slot N20 OptionROM
  slot_n21state                  = var.slot_n21state                  # PCIe Slot N21 OptionROM
  slot_n22state                  = var.slot_n22state                  # PCIe Slot N22 OptionROM
  slot_n23state                  = var.slot_n23state                  # PCIe Slot N23 OptionROM
  slot_n24state                  = var.slot_n24state                  # PCIe Slot N24 OptionROM
  slot_n2state                   = var.slot_n2state                   # PCIe Slot N2 OptionROM
  slot_n3state                   = var.slot_n3state                   # PCIe Slot N3 OptionROM
  slot_n4state                   = var.slot_n4state                   # PCIe Slot N4 OptionROM
  slot_n5state                   = var.slot_n5state                   # PCIe Slot N5 OptionROM
  slot_n6state                   = var.slot_n6state                   # PCIe Slot N6 OptionROM
  slot_n7state                   = var.slot_n7state                   # PCIe Slot N7 OptionROM
  slot_n8state                   = var.slot_n8state                   # PCIe Slot N8 OptionROM
  slot_n9state                   = var.slot_n9state                   # PCIe Slot N9 OptionROM
  slot_raid_link_speed           = var.slot_raid_link_speed           # RAID Link Speed
  slot_raid_state                = var.slot_raid_state                # PCIe Slot RAID OptionROM
  slot_rear_nvme1link_speed      = var.slot_rear_nvme1link_speed      # PCIe Slot:Rear NVME 1 Link Speed
  slot_rear_nvme1state           = var.slot_rear_nvme1state           # PCIe Slot:Rear NVME 1 OptionROM
  slot_rear_nvme2link_speed      = var.slot_rear_nvme2link_speed      # PCIe Slot:Rear NVME 2 Link Speed
  slot_rear_nvme2state           = var.slot_rear_nvme2state           # PCIe Slot:Rear NVME 2 OptionROM
  slot_rear_nvme3link_speed      = var.slot_rear_nvme3link_speed      # PCIe Slot:Rear NVME 3 Link Speed
  slot_rear_nvme3state           = var.slot_rear_nvme3state           # PCIe Slot:Rear NVME 3 OptionROM
  slot_rear_nvme4link_speed      = var.slot_rear_nvme4link_speed      # PCIe Slot:Rear NVME 4 Link Speed
  slot_rear_nvme4state           = var.slot_rear_nvme4state           # PCIe Slot:Rear NVME 4 OptionROM
  slot_rear_nvme5state           = var.slot_rear_nvme5state           # PCIe Slot:Rear NVME 5 OptionROM
  slot_rear_nvme6state           = var.slot_rear_nvme6state           # PCIe Slot:Rear NVME 6 OptionROM
  slot_rear_nvme7state           = var.slot_rear_nvme7state           # PCIe Slot:Rear NVME 7 OptionROM
  slot_rear_nvme8state           = var.slot_rear_nvme8state           # PCIe Slot:Rear NVME 8 OptionROM
  slot_riser1link_speed          = var.slot_riser1link_speed          # PCIe Slot:Riser1 Link Speed
  slot_riser1slot1link_speed     = var.slot_riser1slot1link_speed     # PCIe Slot:Riser1 Slot1 Link Speed
  slot_riser1slot2link_speed     = var.slot_riser1slot2link_speed     # PCIe Slot:Riser2 Slot1 Link Speed
  slot_riser1slot3link_speed     = var.slot_riser1slot3link_speed     # PCIe Slot:Riser3 Slot1 Link Speed
  slot_riser2link_speed          = var.slot_riser2link_speed          # PCIe Slot:Riser2 Link Speed
  slot_riser2slot4link_speed     = var.slot_riser2slot4link_speed     # PCIe Slot:Riser2 Slot4 Link Speed
  slot_riser2slot5link_speed     = var.slot_riser2slot5link_speed     # PCIe Slot:Riser2 Slot5 Link Speed
  slot_riser2slot6link_speed     = var.slot_riser2slot6link_speed     # PCIe Slot:Riser2 Slot6 Link Speed
  slot_sas_state                 = var.slot_sas_state                 # PCIe Slot:SAS OptionROM
  slot_ssd_slot1link_speed       = var.slot_ssd_slot1link_speed       # PCIe Slot:FrontSSD1 Link Speed
  slot_ssd_slot2link_speed       = var.slot_ssd_slot2link_speed       # PCIe Slot:FrontSSD2 Link Speed


  #+++++++++++++++++++++++++++++++
  # Main Section
  #+++++++++++++++++++++++++++++++
  post_error_pause = var.post_error_pause # POST Error Pause
  tpm_support      = var.tpm_support      # TPM Support


  #+++++++++++++++++++++++++++++++
  # Memory Section
  #+++++++++++++++++++++++++++++++
  advanced_mem_test                     = var.advanced_mem_test                     # Enhanced Memory Test
  bme_dma_mitigation                    = var.bme_dma_mitigation                    # BME DMA Mitigation
  burst_and_postponed_refresh           = var.burst_and_postponed_refresh           # Burst and Postponed Refresh
  cbs_cmn_cpu_smee                      = var.cbs_cmn_cpu_smee                      # CPU SMEE
  cbs_cmn_gnb_nb_iommu                  = var.cbs_cmn_gnb_nb_iommu                  # IOMMU
  cbs_cmn_mem_ctrl_bank_group_swap_ddr4 = var.cbs_cmn_mem_ctrl_bank_group_swap_ddr4 # Bank Group Swap
  cbs_cmn_mem_map_bank_interleave_ddr4  = var.cbs_cmn_mem_map_bank_interleave_ddr4  # Chipset Interleave
  cbs_dbg_cpu_snp_mem_cover             = var.cbs_dbg_cpu_snp_mem_cover             # SNP Memory Coverage
  cbs_dbg_cpu_snp_mem_size_cover        = var.cbs_dbg_cpu_snp_mem_size_cover        # SNP Memory Size to Cover in MiB
  cbs_df_cmn_dram_nps                   = var.cbs_df_cmn_dram_nps                   # NUMA Nodes per Socket
  cbs_df_cmn_mem_intlv                  = var.cbs_df_cmn_mem_intlv                  # AMD Memory Interleaving
  cbs_df_cmn_mem_intlv_size             = var.cbs_df_cmn_mem_intlv_size             # AMD Memory Interleaving Size
  cbs_sev_snp_support                   = var.cbs_sev_snp_support                   # SEV-SNP Support
  cke_low_policy                        = var.cke_low_policy                        # CKE Low Policy
  cr_qos                                = var.cr_qos                                # CR QoS
  crfastgo_config                       = var.crfastgo_config                       # CR FastGo Config
  dcpmm_firmware_downgrade              = var.dcpmm_firmware_downgrade              # DCPMM Firmware Downgrade
  dram_refresh_rate                     = var.dram_refresh_rate                     # DRAM Refresh Rate
  dram_sw_thermal_throttling            = var.dram_sw_thermal_throttling            # DRAM SW Thermal Throttling
  eadr_support                          = var.eadr_support                          # eADR Support
  lv_ddr_mode                           = var.lv_ddr_mode                           # Low Voltage DDR Mode
  memory_bandwidth_boost                = var.memory_bandwidth_boost                # Memory Bandwidth Boost
  memory_refresh_rate                   = var.memory_refresh_rate                   # Memory Refresh Rate
  memory_size_limit                     = var.memory_size_limit                     # Memory Size Limit in GiB
  memory_thermal_throttling             = var.memory_thermal_throttling             # Memory Thermal Throttling Mode
  mirroring_mode                        = var.mirroring_mode                        # Mirroring Mode
  numa_optimized                        = var.numa_optimized                        # NUMA Optimized
  nvmdimm_perform_config                = var.nvmdimm_perform_config                # NVM Performance Setting
  operation_mode                        = var.operation_mode                        # Operation Mode
  panic_high_watermark                  = var.panic_high_watermark                  # Panic and High Watermark
  partial_cache_line_sparing            = var.partial_cache_line_sparing            # Partial Cache Line Sparing
  partial_mirror_mode_config            = var.partial_mirror_mode_config            # Partial Memory Mirror Mode
  partial_mirror_percent                = var.partial_mirror_percent                # Partial Mirror Percentage
  partial_mirror_value1                 = var.partial_mirror_value1                 # Partial Mirror1 Size in GiB
  partial_mirror_value2                 = var.partial_mirror_value2                 # Partial Mirror2 Size in GiB
  partial_mirror_value3                 = var.partial_mirror_value3                 # Partial Mirror3 Size in GiB
  partial_mirror_value4                 = var.partial_mirror_value4                 # Partial Mirror4 Size in GiB
  pc_ie_ras_support                     = var.pc_ie_ras_support                     # PCIe RAS Support
  post_package_repair                   = var.post_package_repair                   # Post Package Repair
  select_memory_ras_configuration       = var.select_memory_ras_configuration       # Memory RAS Configuration
  select_ppr_type                       = var.select_ppr_type                       # PPR Type
  sev                                   = var.sev                                   # Secured Encrypted Virtualization
  smee                                  = var.smee                                  # SMEE
  snoopy_mode_for2lm                    = var.snoopy_mode_for2lm                    # Snoopy Mode for 2LM
  snoopy_mode_for_ad                    = var.snoopy_mode_for_ad                    # Snoopy Mode for AD
  sparing_mode                          = var.sparing_mode                          # Sparing Mode
  tsme                                  = var.tsme                                  # Transparent Secure Memory Encryption
  uma_based_clustering                  = var.uma_based_clustering                  # UMA Based Clustering
  vol_memory_mode                       = var.vol_memory_mode                       # Volatile Memory Mode

  #+++++++++++++++++++++++++++++++
  # PCI Section
  #+++++++++++++++++++++++++++++++
  aspm_support               = var.aspm_support               # ASPM Support
  ioh_resource               = var.ioh_resource               # IOH Resource Allocation
  memory_mapped_io_above4gb  = var.memory_mapped_io_above4gb  # Memory Mapped IO Above 4GiB
  mmcfg_base                 = var.mmcfg_base                 # MMCFG BASE
  onboard10gbit_lom          = var.onboard10gbit_lom          # Onboard 10Gbit LOM
  onboard_gbit_lom           = var.onboard_gbit_lom           # Onboard Gbit LOM
  pc_ie_ssd_hot_plug_support = var.pc_ie_ssd_hot_plug_support # NVMe SSD Hot-Plug Support
  sr_iov                     = var.sr_iov                     # SR-IOV Support
  vga_priority               = var.vga_priority               # VGA Priority


  #+++++++++++++++++++++++++++++++
  # Power and Performance Section
  #+++++++++++++++++++++++++++++++
  cbs_cmn_cpu_cpb                    = var.cbs_cmn_cpu_cpb                    # Core Performance Boost
  cbs_cmn_cpu_global_cstate_ctrl     = var.cbs_cmn_cpu_global_cstate_ctrl     # Global C State Control
  cbs_cmn_cpu_l1stream_hw_prefetcher = var.cbs_cmn_cpu_l1stream_hw_prefetcher # L1 Stream HW Prefetcher
  cbs_cmn_cpu_l2stream_hw_prefetcher = var.cbs_cmn_cpu_l2stream_hw_prefetcher # L2 Stream HW Prefetcher
  cbs_cmn_determinism_slider         = var.cbs_cmn_determinism_slider         # Determinism Slider
  cbs_cmn_efficiency_mode_en         = var.cbs_cmn_efficiency_mode_en         # Efficiency Mode Enable
  cbs_cmn_gnb_smucppc                = var.cbs_cmn_gnb_smucppc                # CPPC
  cbs_cmnc_tdp_ctl                   = var.cbs_cmnc_tdp_ctl                   # cTDP Control


  #+++++++++++++++++++++++++++++++
  # Processor Section
  #+++++++++++++++++++++++++++++++
  adjacent_cache_line_prefetch      = var.adjacent_cache_line_prefetch      # Adjacent Cache Line Prefetcher
  altitude                          = var.altitude                          # Altitude
  auto_cc_state                     = var.auto_cc_state                     # Autonomous Core C State
  autonumous_cstate_enable          = var.autonumous_cstate_enable          # CPU Autonomous C State
  boot_performance_mode             = var.boot_performance_mode             # Boot Performance Mode
  cbs_cmn_apbdis                    = var.cbs_cmn_apbdis                    # APBDIS
  cbs_cmn_cpu_gen_downcore_ctrl     = var.cbs_cmn_cpu_gen_downcore_ctrl     # Downcore Control
  cbs_cmn_cpu_streaming_stores_ctrl = var.cbs_cmn_cpu_streaming_stores_ctrl # Streaming Stores Control
  cbs_cmn_fixed_soc_pstate          = var.cbs_cmn_fixed_soc_pstate          # Fixed SOC P-State
  cbs_cmn_gnb_smu_df_cstates        = var.cbs_cmn_gnb_smu_df_cstates        # DF C-States
  cbs_cpu_ccd_ctrl_ssp              = var.cbs_cpu_ccd_ctrl_ssp              # CCD Control
  cbs_cpu_core_ctrl                 = var.cbs_cpu_core_ctrl                 # CPU Downcore Control
  cbs_cpu_smt_ctrl                  = var.cbs_cpu_smt_ctrl                  # CPU SMT Mode
  cbs_df_cmn_acpi_srat_l3numa       = var.cbs_df_cmn_acpi_srat_l3numa       # ACPI SRAT L3 Cache As NUMA Domain
  channel_inter_leave               = var.channel_inter_leave               # Channel Interleaving
  cisco_xgmi_max_speed              = var.cisco_xgmi_max_speed              # Cisco xGMI Max Speed
  closed_loop_therm_throtl          = var.closed_loop_therm_throtl          # Closed Loop Thermal Throttling
  cmci_enable                       = var.cmci_enable                       # Processor CMCI
  config_tdp                        = var.config_tdp                        # Config TDP
  config_tdp_level                  = var.config_tdp_level                  # Configurable TDP Level
  core_multi_processing             = var.core_multi_processing             # Core Multi Processing
  cpu_energy_performance            = var.cpu_energy_performance            # Energy Performance
  cpu_frequency_floor               = var.cpu_frequency_floor               # Frequency Floor Override
  cpu_performance                   = var.cpu_performance                   # CPU Performance
  cpu_power_management              = var.cpu_power_management              # Power Technology
  demand_scrub                      = var.demand_scrub                      # Demand Scrub
  direct_cache_access               = var.direct_cache_access               # Direct Cache Access Support
  dram_clock_throttling             = var.dram_clock_throttling             # DRAM Clock Throttling
  energy_efficient_turbo            = var.energy_efficient_turbo            # Energy Efficient Turbo
  eng_perf_tuning                   = var.eng_perf_tuning                   # Energy Performance Tuning
  enhanced_intel_speed_step_tech    = var.enhanced_intel_speed_step_tech    # Enhanced Intel Speedstep(R) Technology
  epp_enable                        = var.epp_enable                        # Processor EPP Enable
  epp_profile                       = var.epp_profile                       # EPP Profile
  execute_disable_bit               = var.execute_disable_bit               # Execute Disable Bit
  extended_apic                     = var.extended_apic                     # Local X2 Apic
  hardware_prefetch                 = var.hardware_prefetch                 # Hardware Prefetcher
  hwpm_enable                       = var.hwpm_enable                       # CPU Hardware Power Management
  imc_interleave                    = var.imc_interleave                    # IMC Interleaving
  intel_dynamic_speed_select        = var.intel_dynamic_speed_select        # Intel Dynamic Speed Select
  intel_hyper_threading_tech        = var.intel_hyper_threading_tech        # Intel HyperThreading Tech
  intel_speed_select                = var.intel_speed_select                # Intel Speed Select
  intel_turbo_boost_tech            = var.intel_turbo_boost_tech            # Intel Turbo Boost Tech
  intel_virtualization_technology   = var.intel_virtualization_technology   # Intel(R) VT
  ioh_error_enable                  = var.ioh_error_enable                  # IIO Error Enable
  ip_prefetch                       = var.ip_prefetch                       # DCU IP Prefetcher
  kti_prefetch                      = var.kti_prefetch                      # KTI Prefetch
  llc_prefetch                      = var.llc_prefetch                      # LLC Prefetch
  memory_inter_leave                = var.memory_inter_leave                # Intel Memory Interleaving
  package_cstate_limit              = var.package_cstate_limit              # Package C State Limit
  patrol_scrub                      = var.patrol_scrub                      # Patrol Scrub
  patrol_scrub_duration             = var.patrol_scrub_duration             # Patrol Scrub Interval
  processor_c1e                     = var.processor_c1e                     # Processor C1E
  processor_c3report                = var.processor_c3report                # Processor C3 Report
  processor_c6report                = var.processor_c6report                # Processor C6 Report
  processor_cstate                  = var.processor_cstate                  # CPU C State
  pstate_coord_type                 = var.pstate_coord_type                 # P-State Coordination
  pwr_perf_tuning                   = var.pwr_perf_tuning                   # Power Performance Tuning
  qpi_link_speed                    = var.qpi_link_speed                    # UPI Link Frequency Select
  rank_inter_leave                  = var.rank_inter_leave                  # Rank Interleaving
  single_pctl_enable                = var.single_pctl_enable                # Single PCTL
  smt_mode                          = var.smt_mode                          # SMT Mode
  snc                               = var.snc                               # Sub Numa Clustering
  streamer_prefetch                 = var.streamer_prefetch                 # DCU Streamer Prefetch
  svm_mode                          = var.svm_mode                          # SVM Mode
  ufs_disable                       = var.ufs_disable                       # Uncore Frequency Scaling
  work_load_config                  = var.work_load_config                  # Workload Configuration
  xpt_prefetch                      = var.xpt_prefetch                      # XPT Prefetch


  #+++++++++++++++++++++++++++++++
  # QPI Section
  #+++++++++++++++++++++++++++++++
  qpi_link_frequency = var.qpi_link_frequency # QPI Link Frequency Select
  qpi_snoop_mode     = var.qpi_snoop_mode     # QPI Snoop Mode

  #+++++++++++++++++++++++++++++++
  # Serial Port Section
  #+++++++++++++++++++++++++++++++
  serial_port_aenable = var.serial_port_aenable # Serial A Enable

  #+++++++++++++++++++++++++++++++
  # Server Management Section
  #+++++++++++++++++++++++++++++++
  assert_nmi_on_perr              = var.assert_nmi_on_perr              # Assert NMI on PERR
  assert_nmi_on_serr              = var.assert_nmi_on_serr              # Assert NMI on SERR
  baud_rate                       = var.baud_rate                       # Baud Rate
  cdn_enable                      = var.cdn_enable                      # Consistent Device Naming
  cisco_adaptive_mem_training     = var.cisco_adaptive_mem_training     # Adaptive Memory Training
  cisco_debug_level               = var.cisco_debug_level               # BIOS Techlog Level
  cisco_oprom_launch_optimization = var.cisco_oprom_launch_optimization # OptionROM Launch Optimization
  console_redirection             = var.console_redirection             # Console Redirection
  flow_control                    = var.flow_control                    # Flow Control
  frb2enable                      = var.frb2enable                      # FRB-2 Timer
  legacy_os_redirection           = var.legacy_os_redirection           # Legacy OS Redirection
  os_boot_watchdog_timer          = var.os_boot_watchdog_timer          # OS Boot Watchdog Timer
  os_boot_watchdog_timer_policy   = var.os_boot_watchdog_timer_policy   # OS Boot Watchdog Timer Policy
  os_boot_watchdog_timer_timeout  = var.os_boot_watchdog_timer_timeout  # OS Boot Watchdog Timer Timeout
  out_of_band_mgmt_port           = var.out_of_band_mgmt_port           # Out-of-Band Mgmt Port
  putty_key_pad                   = var.putty_key_pad                   # Putty KeyPad
  redirection_after_post          = var.redirection_after_post          # Redirection After BIOS POST
  terminal_type                   = var.terminal_type                   # Terminal Type
  ucsm_boot_order_rule            = var.ucsm_boot_order_rule            # Boot Order Rules


  #+++++++++++++++++++++++++++++++
  # Trusted Platform Section
  #+++++++++++++++++++++++++++++++
  enable_mktme                    = var.enable_mktme                    # Multikey Total Memory Encryption (MK-TME)
  enable_sgx                      = var.enable_sgx                      # Software Guard Extensions
  enable_tme                      = var.enable_tme                      # Total Memory Encryption
  epoch_update                    = var.epoch_update                    # Select Owner EPOCH Input Type
  sgx_auto_registration_agent     = var.sgx_auto_registration_agent     # SGX Auto MP Registration Agent
  sgx_epoch0                      = var.sgx_epoch0                      # SGX Epoch 0
  sgx_epoch1                      = var.sgx_epoch1                      # SGX Epoch 1
  sgx_factory_reset               = var.sgx_factory_reset               # SGX Factory Reset
  sgx_le_pub_key_hash0            = var.sgx_le_pub_key_hash0            # SGX PubKey Hash0
  sgx_le_pub_key_hash1            = var.sgx_le_pub_key_hash1            # SGX PubKey Hash1
  sgx_le_pub_key_hash2            = var.sgx_le_pub_key_hash2            # SGX PubKey Hash2
  sgx_le_pub_key_hash3            = var.sgx_le_pub_key_hash3            # SGX PubKey Hash3
  sgx_le_wr                       = var.sgx_le_wr                       # SGX Write Eanble
  sgx_package_info_in_band_access = var.sgx_package_info_in_band_access # SGX Package Information In-Band Access
  sgx_qos                         = var.sgx_qos                         # SGX QoS
  tpm_control                     = var.tpm_control                     # Trusted Platform Module State
  tpm_pending_operation           = var.tpm_pending_operation           # TPM Pending Operation
  txt_support                     = var.txt_support                     # Intel Trusted Execution Technology Support


  #+++++++++++++++++++++++++++++++
  # USB Section
  #+++++++++++++++++++++++++++++++
  all_usb_devices          = var.all_usb_devices          # All USB Devices
  legacy_usb_support       = var.legacy_usb_support       # Legacy USB Support
  make_device_non_bootable = var.make_device_non_bootable # Make Device Non Bootable
  pch_usb30mode            = var.pch_usb30mode            # xHCI Mode
  usb_emul6064             = var.usb_emul6064             # Port 60/64 Emulation
  usb_port_front           = var.usb_port_front           # USB Port Front
  usb_port_internal        = var.usb_port_internal        # USB Port Internal
  usb_port_kvm             = var.usb_port_kvm             # USB Port KVM
  usb_port_rear            = var.usb_port_rear            # USB Port Rear
  usb_port_sd_card         = var.usb_port_sd_card         # USB Port SD Card
  usb_port_vmedia          = var.usb_port_vmedia          # USB Port VMedia
  usb_xhci_support         = var.usb_xhci_support         # XHCI Legacy Support

  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
