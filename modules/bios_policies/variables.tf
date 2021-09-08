#____________________________________________________________
#
# Standard Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the policy."
  type        = string
}

variable "name" {
  default     = "bios"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "profiles" {
  default     = {}
  description = <<-EOT
  Map of Profiles to Assign to the Policy.
  * moid - Managed Object Identifier for the Managed Resource.
  * object_type - Object Type to Assign in the Profile Configuration.
    - server.Profile - For UCS Server Profiles.
    - server.ProfileTemplate - For UCS Server Profile Templates.
  EOT
  type = map(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}


#____________________________________________________________
#
# BIOS Policy Variables Section.
#____________________________________________________________

variable "acs_control_gpu1state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 1 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu2state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 2 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu3state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 3 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu4state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 4 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu5state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 5 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu6state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 6 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu7state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 7 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_gpu8state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control GPU 8 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_slot11state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control Slot 11 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_slot12state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control Slot 12 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_slot13state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control Slot 13 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "acs_control_slot14state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACS Control Slot 14 configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "adjacent_cache_line_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Adjacent Cache Line Prefetcher configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "advanced_mem_test" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Enhanced Memory Test configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring AdvancedMemTest token.
  * disabled - Value - disabled for configuring AdvancedMemTest token.
  * enabled - Value - enabled for configuring AdvancedMemTest token."
  EOT
  type        = string
}

variable "all_usb_devices" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting All USB Devices configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "altitude" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Altitude configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 300-m - Value - 300-m for configuring Altitude token.
  * 900-m - Value - 900-m for configuring Altitude token.
  * 1500-m - Value - 1500-m for configuring Altitude token.
  * 3000-m - Value - 3000-m for configuring Altitude token.
  * auto - Value - auto for configuring Altitude token."
  EOT
  type        = string
}

variable "aspm_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ASPM Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring AspmSupport token.
  * disabled - Value - Disabled for configuring AspmSupport token.
  * Force L0s - Value - Force L0s for configuring AspmSupport token.
  * L1 Only - Value - L1 Only for configuring AspmSupport token."
  EOT
  type        = string
}

variable "assert_nmi_on_perr" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Assert NMI on PERR configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "assert_nmi_on_serr" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Assert NMI on SERR configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "auto_cc_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Autonomous Core C State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "autonumous_cstate_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU Autonomous C State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "baud_rate" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Baud Rate configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 9600 - Value - 9600 for configuring BaudRate token.
  * 19200 - Value - 19200 for configuring BaudRate token.
  * 38400 - Value - 38400 for configuring BaudRate token.
  * 57600 - Value - 57600 for configuring BaudRate token.
  * 115200 - Value - 115200 for configuring BaudRate token."
  EOT
  type        = string
}

variable "bme_dma_mitigation" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting BME DMA Mitigation configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "boot_option_num_retry" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Number of Retries configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 5 - Value - 5 for configuring BootOptionNumRetry token.
  * 13 - Value - 13 for configuring BootOptionNumRetry token.
  * Infinite - Value - Infinite for configuring BootOptionNumRetry token."
  EOT
  type        = string
}

variable "boot_option_re_cool_down" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Cool Down Time (sec) configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 15 - Value - 15 for configuring BootOptionReCoolDown token.
  * 45 - Value - 45 for configuring BootOptionReCoolDown token.
  * 90 - Value - 90 for configuring BootOptionReCoolDown token."
  EOT
  type        = string
}

variable "boot_option_retry" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Boot Option Retry configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "boot_performance_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Boot Performance Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Max Efficient - Value - Max Efficient for configuring BootPerformanceMode token.
  * Max Performance - Value - Max Performance for configuring BootPerformanceMode token.
  * Set by Intel NM - Value - Set by Intel NM for configuring BootPerformanceMode token."
  EOT
  type        = string
}

variable "burst_and_postponed_refresh" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Burst and Postponed Refresh configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cbs_cmn_apbdis" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting APBDIS configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 0 - Value - 0 for configuring CbsCmnApbdis token.
  * 1 - Value - 1 for configuring CbsCmnApbdis token.
  * Auto - Value - Auto for configuring CbsCmnApbdis token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_cpb" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Core Performance Boost configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuCpb token.
  * disabled - Value - disabled for configuring CbsCmnCpuCpb token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_gen_downcore_ctrl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Downcore Control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuGenDowncoreCtrl token.
  * FOUR (2 + 2) - Value - FOUR (2 + 2) for configuring CbsCmnCpuGenDowncoreCtrl token.
  * FOUR (4 + 0) - Value - FOUR (4 + 0) for configuring CbsCmnCpuGenDowncoreCtrl token.
  * SIX (3 + 3) - Value - SIX (3 + 3) for configuring CbsCmnCpuGenDowncoreCtrl token.
  * THREE (3 + 0) - Value - THREE (3 + 0) for configuring CbsCmnCpuGenDowncoreCtrl token.
  * TWO (1 + 1) - Value - TWO (1 + 1) for configuring CbsCmnCpuGenDowncoreCtrl token.
  * TWO (2 + 0) - Value - TWO (2 + 0) for configuring CbsCmnCpuGenDowncoreCtrl token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_global_cstate_ctrl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Global C State Control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuGlobalCstateCtrl token.
  * disabled - Value - disabled for configuring CbsCmnCpuGlobalCstateCtrl token.
  * enabled - Value - enabled for configuring CbsCmnCpuGlobalCstateCtrl token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_l1stream_hw_prefetcher" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting L1 Stream HW Prefetcher configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuL1streamHwPrefetcher token.
  * disabled - Value - disabled for configuring CbsCmnCpuL1streamHwPrefetcher token.
  * enabled - Value - enabled for configuring CbsCmnCpuL1streamHwPrefetcher token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_l2stream_hw_prefetcher" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting L2 Stream HW Prefetcher configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuL2streamHwPrefetcher token.
  * disabled - Value - disabled for configuring CbsCmnCpuL2streamHwPrefetcher token.
  * enabled - Value - enabled for configuring CbsCmnCpuL2streamHwPrefetcher token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_smee" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU SMEE configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuSmee token.
  * disabled - Value - disabled for configuring CbsCmnCpuSmee token.
  * enabled - Value - enabled for configuring CbsCmnCpuSmee token."
  EOT
  type        = string
}

variable "cbs_cmn_cpu_streaming_stores_ctrl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Streaming Stores Control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnCpuStreamingStoresCtrl token.
  * disabled - Value - disabled for configuring CbsCmnCpuStreamingStoresCtrl token.
  * enabled - Value - enabled for configuring CbsCmnCpuStreamingStoresCtrl token."
  EOT
  type        = string
}

variable "cbs_cmn_determinism_slider" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Determinism Slider configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnDeterminismSlider token.
  * Performance - Value - Performance for configuring CbsCmnDeterminismSlider token.
  * Power - Value - Power for configuring CbsCmnDeterminismSlider token."
  EOT
  type        = string
}

variable "cbs_cmn_efficiency_mode_en" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Efficiency Mode Enable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnEfficiencyModeEn token.
  * enabled - Value - Enabled for configuring CbsCmnEfficiencyModeEn token."
  EOT
  type        = string
}

variable "cbs_cmn_fixed_soc_pstate" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Fixed SOC P-State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnFixedSocPstate token.
  * P0 - Value - P0 for configuring CbsCmnFixedSocPstate token.
  * P1 - Value - P1 for configuring CbsCmnFixedSocPstate token.
  * P2 - Value - P2 for configuring CbsCmnFixedSocPstate token.
  * P3 - Value - P3 for configuring CbsCmnFixedSocPstate token."
  EOT
  type        = string
}

variable "cbs_cmn_gnb_nb_iommu" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IOMMU configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnGnbNbIommu token.
  * disabled - Value - disabled for configuring CbsCmnGnbNbIommu token.
  * enabled - Value - enabled for configuring CbsCmnGnbNbIommu token."
  EOT
  type        = string
}

variable "cbs_cmn_gnb_smu_df_cstates" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DF C-States configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnGnbSmuDfCstates token.
  * disabled - Value - disabled for configuring CbsCmnGnbSmuDfCstates token.
  * enabled - Value - enabled for configuring CbsCmnGnbSmuDfCstates token."
  EOT
  type        = string
}

variable "cbs_cmn_gnb_smucppc" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPPC configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnGnbSmucppc token.
  * disabled - Value - disabled for configuring CbsCmnGnbSmucppc token.
  * enabled - Value - enabled for configuring CbsCmnGnbSmucppc token."
  EOT
  type        = string
}

variable "cbs_cmn_mem_ctrl_bank_group_swap_ddr4" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Bank Group Swap configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnMemCtrlBankGroupSwapDdr4 token.
  * disabled - Value - disabled for configuring CbsCmnMemCtrlBankGroupSwapDdr4 token.
  * enabled - Value - enabled for configuring CbsCmnMemCtrlBankGroupSwapDdr4 token."
  EOT
  type        = string
}

variable "cbs_cmn_mem_map_bank_interleave_ddr4" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Chipset Interleave configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmnMemMapBankInterleaveDdr4 token.
  * disabled - Value - disabled for configuring CbsCmnMemMapBankInterleaveDdr4 token."
  EOT
  type        = string
}

variable "cbs_cmnc_tdp_ctl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting cTDP Control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCmncTdpCtl token.
  * Manual - Value - Manual for configuring CbsCmncTdpCtl token."
  EOT
  type        = string
}

variable "cbs_cpu_ccd_ctrl_ssp" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CCD Control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 2 CCDs - Value - 2 CCDs for configuring CbsCpuCcdCtrlSsp token.
  * 3 CCDs - Value - 3 CCDs for configuring CbsCpuCcdCtrlSsp token.
  * 4 CCDs - Value - 4 CCDs for configuring CbsCpuCcdCtrlSsp token.
  * 6 CCDs - Value - 6 CCDs for configuring CbsCpuCcdCtrlSsp token.
  * Auto - Value - Auto for configuring CbsCpuCcdCtrlSsp token."
  EOT
  type        = string
}

variable "cbs_cpu_core_ctrl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU Downcore control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCpuCoreCtrl token.
  * FIVE (5 + 0) - Value - FIVE (5 + 0) for configuring CbsCpuCoreCtrl token.
  * FOUR (4 + 0) - Value - FOUR (4 + 0) for configuring CbsCpuCoreCtrl token.
  * ONE (1 + 0) - Value - ONE (1 + 0) for configuring CbsCpuCoreCtrl token.
  * SEVEN (7 + 0) - Value - SEVEN (7 + 0) for configuring CbsCpuCoreCtrl token.
  * SIX (6 + 0) - Value - SIX (6 + 0) for configuring CbsCpuCoreCtrl token.
  * THREE (3 + 0) - Value - THREE (3 + 0) for configuring CbsCpuCoreCtrl token.
  * TWO (2 + 0) - Value - TWO (2 + 0) for configuring CbsCpuCoreCtrl token."
  EOT
  type        = string
}

variable "cbs_cpu_smt_ctrl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU SMT Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsCpuSmtCtrl token.
  * disabled - Value - disabled for configuring CbsCpuSmtCtrl token.
  * enabled - Value - enabled for configuring CbsCpuSmtCtrl token."
  EOT
  type        = string
}

variable "cbs_dbg_cpu_snp_mem_cover" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SNP Memory Coverage configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsDbgCpuSnpMemCover token.
  * Custom - Value - Custom for configuring CbsDbgCpuSnpMemCover token.
  * disabled - Value - disabled for configuring CbsDbgCpuSnpMemCover token.
  * enabled - Value - enabled for configuring CbsDbgCpuSnpMemCover token."
  EOT
  type        = string
}

variable "cbs_dbg_cpu_snp_mem_size_cover" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SNP Memory Size to Cover in MiB configuration (0 - 1048576 MiB)."
  EOT
  type        = string
}

variable "cbs_df_cmn_acpi_srat_l3numa" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting ACPI SRAT L3 Cache As NUMA Domain configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsDfCmnAcpiSratL3numa token.
  * disabled - Value - disabled for configuring CbsDfCmnAcpiSratL3numa token.
  * enabled - Value - enabled for configuring CbsDfCmnAcpiSratL3numa token."
  EOT
  type        = string
}

variable "cbs_df_cmn_dram_nps" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NUMA Nodes per Socket configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsDfCmnDramNps token.
  * NPS0 - Value - NPS0 for configuring CbsDfCmnDramNps token.
  * NPS1 - Value - NPS1 for configuring CbsDfCmnDramNps token.
  * NPS2 - Value - NPS2 for configuring CbsDfCmnDramNps token.
  * NPS4 - Value - NPS4 for configuring CbsDfCmnDramNps token."
  EOT
  type        = string
}

variable "cbs_df_cmn_mem_intlv" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting AMD Memory Interleaving configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CbsDfCmnMemIntlv token.
  * Channel - Value - Channel for configuring CbsDfCmnMemIntlv token.
  * Die - Value - Die for configuring CbsDfCmnMemIntlv token.
  * None - Value - None for configuring CbsDfCmnMemIntlv token.
  * Socket - Value - Socket for configuring CbsDfCmnMemIntlv token."
  EOT
  type        = string
}

variable "cbs_df_cmn_mem_intlv_size" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting AMD Memory Interleaving Size configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 256 Bytes - Value - 256 Bytes for configuring CbsDfCmnMemIntlvSize token.
  * 512 Bytes - Value - 512 Bytes for configuring CbsDfCmnMemIntlvSize token.
  * 1 KB - Value - 1 KiB for configuring CbsDfCmnMemIntlvSize token.
  * 2 KB - Value - 2 KiB for configuring CbsDfCmnMemIntlvSize token.
  * 4 KB - Value - 4 KiB for configuring CbsDfCmnMemIntlvSize token.
  * Auto - Value - Auto for configuring CbsDfCmnMemIntlvSize token."
  EOT
  type        = string
}

variable "cbs_sev_snp_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SEV-SNP Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cdn_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Consistent Device Naming configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cdn_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CDN Support for LOM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring CdnSupport token.
  * enabled - Value - enabled for configuring CdnSupport token.
  * LOMs Only - Value - LOMs Only for configuring CdnSupport token."
  EOT
  type        = string
}

variable "channel_inter_leave" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Channel Interleaving configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1-way - Value - 1-way for configuring ChannelInterLeave token.
  * 2-way - Value - 2-way for configuring ChannelInterLeave token.
  * 3-way - Value - 3-way for configuring ChannelInterLeave token.
  * 4-way - Value - 4-way for configuring ChannelInterLeave token.
  * auto - Value - auto for configuring ChannelInterLeave token."
  EOT
  type        = string
}

variable "cisco_adaptive_mem_training" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Adaptive Memory Training configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cisco_debug_level" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting BIOS Techlog Level configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Maximum - Value - Maximum for configuring CiscoDebugLevel token.
  * Minimum - Value - Minimum for configuring CiscoDebugLevel token.
  * Normal - Value - Normal for configuring CiscoDebugLevel token."
  EOT
  type        = string
}

variable "cisco_oprom_launch_optimization" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting OptionROM Launch Optimization configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cisco_xgmi_max_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Cisco xGMI Max Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cke_low_policy" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CKE Low Policy configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * auto - Value - auto for configuring CkeLowPolicy token.
  * disabled - Value - disabled for configuring CkeLowPolicy token.
  * fast - Value - fast for configuring CkeLowPolicy token.
  * slow - Value - slow for configuring CkeLowPolicy token."
  EOT
  type        = string
}

variable "closed_loop_therm_throtl" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Closed Loop Thermal Throttling configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cmci_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Processor CMCI configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "config_tdp" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Config TDP configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "config_tdp_level" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Configurable TDP Level configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Level 1 - Value - Level 1 for configuring ConfigTdpLevel token.
  * Level 2 - Value - Level 2 for configuring ConfigTdpLevel token.
  * Normal - Value - Normal for configuring ConfigTdpLevel token."
  EOT
  type        = string
}

variable "console_redirection" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Console Redirection configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * com-0 - Value - com-0 for configuring ConsoleRedirection token.
  * com-1 - Value - com-1 for configuring ConsoleRedirection token.
  * disabled - Value - disabled for configuring ConsoleRedirection token.
  * enabled - Value - enabled for configuring ConsoleRedirection token.
  * serial-port-a - Value - serial-port-a for configuring ConsoleRedirection token."
  EOT
  type        = string
}

variable "core_multi_processing" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Core Multi Processing configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1 - Value - 1 for configuring CoreMultiProcessing token.
  * 2 - Value - 2 for configuring CoreMultiProcessing token.
  * 3 - Value - 3 for configuring CoreMultiProcessing token.
  * 4 - Value - 4 for configuring CoreMultiProcessing token.
  * 5 - Value - 5 for configuring CoreMultiProcessing token.
  * 6 - Value - 6 for configuring CoreMultiProcessing token.
  * 7 - Value - 7 for configuring CoreMultiProcessing token.
  * 8 - Value - 8 for configuring CoreMultiProcessing token.
  * 9 - Value - 9 for configuring CoreMultiProcessing token.
  * 10 - Value - 10 for configuring CoreMultiProcessing token.
  * 11 - Value - 11 for configuring CoreMultiProcessing token.
  * 12 - Value - 12 for configuring CoreMultiProcessing token.
  * 13 - Value - 13 for configuring CoreMultiProcessing token.
  * 14 - Value - 14 for configuring CoreMultiProcessing token.
  * 15 - Value - 15 for configuring CoreMultiProcessing token.
  * 16 - Value - 16 for configuring CoreMultiProcessing token.
  * 17 - Value - 17 for configuring CoreMultiProcessing token.
  * 18 - Value - 18 for configuring CoreMultiProcessing token.
  * 19 - Value - 19 for configuring CoreMultiProcessing token.
  * 20 - Value - 20 for configuring CoreMultiProcessing token.
  * 21 - Value - 21 for configuring CoreMultiProcessing token.
  * 22 - Value - 22 for configuring CoreMultiProcessing token.
  * 23 - Value - 23 for configuring CoreMultiProcessing token.
  * 24 - Value - 24 for configuring CoreMultiProcessing token.
  * 25 - Value - 25 for configuring CoreMultiProcessing token.
  * 26 - Value - 26 for configuring CoreMultiProcessing token.
  * 27 - Value - 27 for configuring CoreMultiProcessing token.
  * 28 - Value - 28 for configuring CoreMultiProcessing token.
  * 29 - Value - 29 for configuring CoreMultiProcessing token.
  * 30 - Value - 30 for configuring CoreMultiProcessing token.
  * 31 - Value - 31 for configuring CoreMultiProcessing token.
  * 32 - Value - 32 for configuring CoreMultiProcessing token.
  * 33 - Value - 33 for configuring CoreMultiProcessing token.
  * 34 - Value - 34 for configuring CoreMultiProcessing token.
  * 35 - Value - 35 for configuring CoreMultiProcessing token.
  * 36 - Value - 36 for configuring CoreMultiProcessing token.
  * 37 - Value - 37 for configuring CoreMultiProcessing token.
  * 38 - Value - 38 for configuring CoreMultiProcessing token.
  * 39 - Value - 39 for configuring CoreMultiProcessing token.
  * 40 - Value - 40 for configuring CoreMultiProcessing token.
  * 41 - Value - 41 for configuring CoreMultiProcessing token.
  * 42 - Value - 42 for configuring CoreMultiProcessing token.
  * 43 - Value - 43 for configuring CoreMultiProcessing token.
  * 44 - Value - 44 for configuring CoreMultiProcessing token.
  * 45 - Value - 45 for configuring CoreMultiProcessing token.
  * 46 - Value - 46 for configuring CoreMultiProcessing token.
  * 47 - Value - 47 for configuring CoreMultiProcessing token.
  * 48 - Value - 48 for configuring CoreMultiProcessing token.
  * all - Value - all for configuring CoreMultiProcessing token."
  EOT
  type        = string
}

variable "cpu_energy_performance" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Energy Performance configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * balanced-energy - Value - balanced-energy for configuring CpuEnergyPerformance token.
  * balanced-performance - Value - balanced-performance for configuring CpuEnergyPerformance token.
  * balanced-power - Value - balanced-power for configuring CpuEnergyPerformance token.
  * energy-efficient - Value - energy-efficient for configuring CpuEnergyPerformance token.
  * performance - Value - performance for configuring CpuEnergyPerformance token.
  * power - Value - power for configuring CpuEnergyPerformance token."
  EOT
  type        = string
}

variable "cpu_frequency_floor" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Frequency Floor Override configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "cpu_performance" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU Performance configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * custom - Value - custom for configuring CpuPerformance token.
  * enterprise - Value - enterprise for configuring CpuPerformance token.
  * high-throughput - Value - high-throughput for configuring CpuPerformance token.
  * hpc - Value - hpc for configuring CpuPerformance token."
  EOT
  type        = string
}

variable "cpu_power_management" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Power Technology configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * custom - Value - custom for configuring CpuPowerManagement token.
  * disabled - Value - disabled for configuring CpuPowerManagement token.
  * energy-efficient - Value - energy-efficient for configuring CpuPowerManagement token.
  * performance - Value - performance for configuring CpuPowerManagement token."
  EOT
  type        = string
}

variable "cr_qos" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CR QoS configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - Disabled for configuring CrQos token.
  * Mode 0 - Disable the PMem QoS Feature - Value - Mode 0 - Disable the PMem QoS Feature for configuring CrQos token.
  * Mode 1 - M2M QoS Enable and CHA QoS Disable - Value - Mode 1 - M2M QoS Enable and CHA QoS Disable for configuring CrQos token.
  * Mode 2 - M2M QoS Enable and CHA QoS Enable - Value - Mode 2 - M2M QoS Enable and CHA QoS Enable for configuring CrQos token.
  * Recipe 1 - Value - Recipe 1 for configuring CrQos token.
  * Recipe 2 - Value - Recipe 2 for configuring CrQos token.
  * Recipe 3 - Value - Recipe 3 for configuring CrQos token."
  EOT
  type        = string
}

variable "crfastgo_config" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CR FastGo Config configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring CrfastgoConfig token.
  * Default - Value - Default for configuring CrfastgoConfig token.
  * Disable optimization - Value - Disable optimization for configuring CrfastgoConfig token.
  * Enable optimization - Value - Enable optimization for configuring CrfastgoConfig token.
  * Option 1 - Value - Option 1 for configuring CrfastgoConfig token.
  * Option 2 - Value - Option 2 for configuring CrfastgoConfig token.
  * Option 3 - Value - Option 3 for configuring CrfastgoConfig token.
  * Option 4 - Value - Option 4 for configuring CrfastgoConfig token.
  * Option 5 - Value - Option 5 for configuring CrfastgoConfig token."
  EOT
  type        = string
}

variable "dcpmm_firmware_downgrade" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DCPMM Firmware Downgrade configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "demand_scrub" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Demand Scrub configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "direct_cache_access" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Direct Cache Access Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * auto - Value - auto for configuring DirectCacheAccess token.
  * disabled - Value - disabled for configuring DirectCacheAccess token.
  * enabled - Value - enabled for configuring DirectCacheAccess token."
  EOT
  type        = string
}

variable "dram_clock_throttling" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DRAM Clock Throttling configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring DramClockThrottling token.
  * Balanced - Value - Balanced for configuring DramClockThrottling token.
  * Energy Efficient - Value - Energy Efficient for configuring DramClockThrottling token.
  * Performance - Value - Performance for configuring DramClockThrottling token."
  EOT
  type        = string
}

variable "dram_refresh_rate" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DRAM Refresh Rate configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1x - Value - 1x for configuring DramRefreshRate token.
  * 2x - Value - 2x for configuring DramRefreshRate token.
  * 3x - Value - 3x for configuring DramRefreshRate token.
  * 4x - Value - 4x for configuring DramRefreshRate token.
  * Auto - Value - Auto for configuring DramRefreshRate token."
  EOT
  type        = string
}

variable "dram_sw_thermal_throttling" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DRAM SW Thermal Throttling configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "eadr_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting eADR Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring EadrSupport token.
  * disabled - Value - disabled for configuring EadrSupport token.
  * enabled - Value - enabled for configuring EadrSupport token."
  EOT
  type        = string
}

variable "edpc_en" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IIO eDPC Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - Disabled for configuring EdpcEn token.
  * On Fatal Error - Value - On Fatal Error for configuring EdpcEn token.
  * On Fatal and Non-Fatal Errors - Value - On Fatal and Non-Fatal Errors for configuring EdpcEn token."
  EOT
  type        = string
}

variable "enable_clock_spread_spec" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting External SSC Enable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "enable_mktme" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Multikey Total Memory Encryption (MK-TME) configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}
variable "enable_sgx" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Software Guard Extensions (SGX) configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "enable_tme" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Total Memory Encryption (TME) configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "energy_efficient_turbo" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Energy Efficient Turbo configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "eng_perf_tuning" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Energy Performance Tuning configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * BIOS - Value - BIOS for configuring EngPerfTuning token.
  * OS - Value - OS for configuring EngPerfTuning token."
  EOT
  type        = string
}

variable "enhanced_intel_speed_step_tech" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Enhanced Intel Speedstep (R) Technology configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "epoch_update" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Select Owner EPOCH Input Type configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Change to New Random Owner EPOCHs - Value - Change to New Random Owner EPOCHs for configuring EpochUpdate token.
  * Manual User Defined Owner EPOCHs - Value - Manual User Defined Owner EPOCHs for configuring EpochUpdate token.
  * SGX Owner EPOCH activated - Value - SGX Owner EPOCH activated for configuring EpochUpdate token."
  EOT
  type        = string
}

variable "epp_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Processor EPP Enable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "epp_profile" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting EPP Profile configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Balanced Performance - Value - Balanced Performance for configuring EppProfile token.
  * Balanced Power - Value - Balanced Power for configuring EppProfile token.
  * Performance - Value - Performance for configuring EppProfile token.
  * Power - Value - Power for configuring EppProfile token."
  EOT
  type        = string
}

variable "execute_disable_bit" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Execute Disable Bit configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "extended_apic" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Local X2 Apic configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring ExtendedApic token.
  * enabled - Value - enabled for configuring ExtendedApic token.
  * X2APIC - Value - X2APIC for configuring ExtendedApic token.
  * XAPIC - Value - XAPIC for configuring ExtendedApic token."
  EOT
  type        = string
}

variable "flow_control" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Flow Control configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * none - Value - none for configuring FlowControl token.
  * rts-cts - Value - rts-cts for configuring FlowControl token."
  EOT
  type        = string
}

variable "frb2enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting FRB-2 Timer configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "hardware_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Hardware Prefetcher configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "hwpm_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU Hardware Power Management configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - Disabled for configuring HwpmEnable token.
  * HWPM Native Mode - Value - HWPM Native Mode for configuring HwpmEnable token.
  * HWPM OOB Mode - Value - HWPM OOB Mode for configuring HwpmEnable token.
  * NATIVE MODE - Value - NATIVE MODE for configuring HwpmEnable token.
  * Native Mode with no Legacy - Value - Native Mode with no Legacy for configuring HwpmEnable token.
  * OOB MODE - Value - OOB MODE for configuring HwpmEnable token."
  EOT
  type        = string
}

variable "imc_interleave" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IMC Interleaving configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1-way Interleave - Value - 1-way Interleave for configuring ImcInterleave token.
  * 2-way Interleave - Value - 2-way Interleave for configuring ImcInterleave token.
  * Auto - Value - Auto for configuring ImcInterleave token."
  EOT
  type        = string
}

variable "intel_dynamic_speed_select" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel Dynamic Speed Select configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_hyper_threading_tech" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel HyperThreading Tech configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_speed_select" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel Speed Select configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Base - Value - Base for configuring IntelSpeedSelect token.
  * Config 1 - Value - Config 1 for configuring IntelSpeedSelect token.
  * Config 2 - Value - Config 2 for configuring IntelSpeedSelect token.
  * Config 3 - Value - Config 3 for configuring IntelSpeedSelect token.
  * Config 4 - Value - Config 4 for configuring IntelSpeedSelect token."
  EOT
  type        = string
}

variable "intel_turbo_boost_tech" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel Turbo Boost Tech configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_virtualization_technology" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel (R) VT configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_vt_for_directed_io" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel VT for Directed IO configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_vtd_coherency_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel (R) VT-d Coherency Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_vtd_interrupt_remapping" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel (R) VT-d Interrupt Remapping configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_vtd_pass_through_dma_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel (R) VT-d PassThrough DMA Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "intel_vtdats_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel VTD ATS Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "ioh_error_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IIO Error Enable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * No - Value - No for configuring IohErrorEnable token.
  * Yes - Value - Yes for configuring IohErrorEnable token."
  EOT
  type        = string
}

variable "ioh_resource" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IOH Resource Allocation configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * IOH0 24k IOH1 40k - Value - IOH0 24k IOH1 40k for configuring IohResource token.
  * IOH0 32k IOH1 32k - Value - IOH0 32k IOH1 32k for configuring IohResource token.
  * IOH0 40k IOH1 24k - Value - IOH0 40k IOH1 24k for configuring IohResource token.
  * IOH0 48k IOH1 16k - Value - IOH0 48k IOH1 16k for configuring IohResource token.
  * IOH0 56k IOH1 8k - Value - IOH0 56k IOH1 8k for configuring IohResource token."
  EOT
  type        = string
}

variable "ip_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DCU IP Prefetcher configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "ipv4http" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IPV4 HTTP Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "ipv4pxe" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IPv4 PXE Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "ipv6http" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IPV6 HTTP Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "ipv6pxe" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting IPV6 PXE Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "kti_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting KTI Prefetch configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring KtiPrefetch token.
  * disabled - Value - disabled for configuring KtiPrefetch token.
  * enabled - Value - enabled for configuring KtiPrefetch token."
  EOT
  type        = string
}

variable "legacy_os_redirection" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Legacy OS Redirection configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "legacy_usb_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Legacy USB Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * auto - Value - auto for configuring LegacyUsbSupport token.
  * disabled - Value - disabled for configuring LegacyUsbSupport token.
  * enabled - Value - enabled for configuring LegacyUsbSupport token."
  EOT
  type        = string
}

variable "llc_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting LLC Prefetch configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "lom_port0state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting LOM Port 0 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring LomPort0state token.
  * enabled - Value - enabled for configuring LomPort0state token.
  * Legacy Only - Value - Legacy Only for configuring LomPort0state token.
  * UEFI Only - Value - UEFI Only for configuring LomPort0state token."
  EOT
  type        = string
}

variable "lom_port1state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting LOM Port 1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring LomPort1state token.
  * enabled - Value - enabled for configuring LomPort1state token.
  * Legacy Only - Value - Legacy Only for configuring LomPort1state token.
  * UEFI Only - Value - UEFI Only for configuring LomPort1state token."
  EOT
  type        = string
}

variable "lom_port2state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting LOM Port 2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring LomPort2state token.
  * enabled - Value - enabled for configuring LomPort2state token.
  * Legacy Only - Value - Legacy Only for configuring LomPort2state token.
  * UEFI Only - Value - UEFI Only for configuring LomPort2state token."
  EOT
  type        = string
}

variable "lom_port3state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting LOM Port 3 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring LomPort3state token.
  * enabled - Value - enabled for configuring LomPort3state token.
  * Legacy Only - Value - Legacy Only for configuring LomPort3state token.
  * UEFI Only - Value - UEFI Only for configuring LomPort3state token."
  EOT
  type        = string
}

variable "lom_ports_all_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting All Onboard LOM Ports configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "lv_ddr_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Low Voltage DDR Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * auto - Value - auto for configuring LvDdrMode token.
  * performance-mode - Value - performance-mode for configuring LvDdrMode token.
  * power-saving-mode - Value - power-saving-mode for configuring LvDdrMode token."
  EOT
  type        = string
}

variable "make_device_non_bootable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Make Device Non Bootable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "memory_bandwidth_boost" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Memory Bandwidth Boost configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "memory_inter_leave" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel Memory Interleaving configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1 Way Node Interleave - Value - 1 Way Node Interleave for configuring MemoryInterLeave token.
  * 2 Way Node Interleave - Value - 2 Way Node Interleave for configuring MemoryInterLeave token.
  * 4 Way Node Interleave - Value - 4 Way Node Interleave for configuring MemoryInterLeave token.
  * 8 Way Node Interleave - Value - 8 Way Node Interleave for configuring MemoryInterLeave token.
  * disabled - Value - disabled for configuring MemoryInterLeave token.
  * enabled - Value - enabled for configuring MemoryInterLeave token."
  EOT
  type        = string
}

variable "memory_mapped_io_above4gb" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Memory Mapped IO above 4GiB configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "memory_refresh_rate" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Memory Refresh Rate configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1x Refresh - Value - 1x Refresh for configuring MemoryRefreshRate token.
  * 2x Refresh - Value - 2x Refresh for configuring MemoryRefreshRate token."
  EOT
  type        = string
}

variable "memory_size_limit" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Memory Size Limit in GiB configuration (0 - 65535 GiB)."
  EOT
  type        = string
}

variable "memory_thermal_throttling" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Memory Thermal Throttling Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * CLTT with PECI - Value - CLTT with PECI for configuring MemoryThermalThrottling token.
  * disabled - Value - Disabled for configuring MemoryThermalThrottling token."
  EOT
  type        = string
}

variable "mirroring_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Mirroring Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * inter-socket - Value - inter-socket for configuring MirroringMode token.
  * intra-socket - Value - intra-socket for configuring MirroringMode token."
  EOT
  type        = string
}

variable "mmcfg_base" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting MMCFG BASE configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1 GB - Value - 1 GiB for configuring MmcfgBase token.
  * 2 GB - Value - 2 GiB for configuring MmcfgBase token.
  * 2.5 GB - Value - 2.5 GiB for configuring MmcfgBase token.
  * 3 GB - Value - 3 GiB for configuring MmcfgBase token.
  * Auto - Value - Auto for configuring MmcfgBase token."
  EOT
  type        = string
}

variable "network_stack" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Network Stack configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "numa_optimized" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NUMA Optimized configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "nvmdimm_perform_config" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVM Performance Setting configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * BW Optimized - Value - BW Optimized for configuring NvmdimmPerformConfig token.
  * Balanced Profile - Value - Balanced Profile for configuring NvmdimmPerformConfig token.
  * Latency Optimized - Value - Latency Optimized for configuring NvmdimmPerformConfig token."
  EOT
  type        = string
}

variable "onboard10gbit_lom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Onboard 10Gbit LOM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "onboard_gbit_lom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Onboard Gbit LOM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "onboard_scu_storage_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Onboard SCU Storage Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "onboard_scu_storage_sw_stack" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Onboard SCU Storage SW Stack configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Intel RSTe - Value - Intel RSTe for configuring OnboardScuStorageSwStack token.
  * LSI SW RAID - Value - LSI SW RAID for configuring OnboardScuStorageSwStack token."
  EOT
  type        = string
}

variable "operation_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Operation Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Test Only - Value - Test Only for configuring OperationMode token.
  * Test and Repair - Value - Test and Repair for configuring OperationMode token."
  EOT
  type        = string
}

variable "os_boot_watchdog_timer" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting OS Boot Watchdog Timer configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "os_boot_watchdog_timer_policy" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting OS Boot Watchdog Timer Policy configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * do-nothing - Value - do-nothing for configuring OsBootWatchdogTimerPolicy token.
  * power-off - Value - power-off for configuring OsBootWatchdogTimerPolicy token.
  * reset - Value - reset for configuring OsBootWatchdogTimerPolicy token."
  EOT
  type        = string
}

variable "os_boot_watchdog_timer_timeout" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting OS Boot Watchdog Timer Timeout configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 5-minutes - Value - 5-minutes for configuring OsBootWatchdogTimerTimeout token.
  * 10-minutes - Value - 10-minutes for configuring OsBootWatchdogTimerTimeout token.
  * 15-minutes - Value - 15-minutes for configuring OsBootWatchdogTimerTimeout token.
  * 20-minutes - Value - 20-minutes for configuring OsBootWatchdogTimerTimeout token."
  EOT
  type        = string
}

variable "out_of_band_mgmt_port" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Out-of-Band Mgmt Port configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "package_cstate_limit" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Package C State Limit configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PackageCstateLimit token.
  * C0 C1 State - Value - C0 C1 State for configuring PackageCstateLimit token.
  * C0/C1 - Value - C0/C1 for configuring PackageCstateLimit token.
  * C2 - Value - C2 for configuring PackageCstateLimit token.
  * C6 Non Retention - Value - C6 Non Retention for configuring PackageCstateLimit token.
  * C6 Retention - Value - C6 Retention for configuring PackageCstateLimit token.
  * No Limit - Value - No Limit for configuring PackageCstateLimit token."
  EOT
  type        = string
}

variable "panic_high_watermark" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Panic and High Watermark configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * High - Value - High for configuring PanicHighWatermark token.
  * Low - Value - Low for configuring PanicHighWatermark token."
  EOT
  type        = string
}

variable "partial_cache_line_sparing" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Cache Line Sparing configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "partial_mirror_mode_config" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Memory Mirror Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring PartialMirrorModeConfig token.
  * Percentage - Value - Percentage for configuring PartialMirrorModeConfig token.
  * Value in GB - Value - Value in GiB for configuring PartialMirrorModeConfig token."
  EOT
  type        = string
}

variable "partial_mirror_percent" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Mirror Percentage configuration (0.00 - 50.00 Percentage)."
  EOT
  type        = string
}

variable "partial_mirror_value1" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Mirror1 Size in GiB configuration (0 - 65535 GiB)."
  EOT
  type        = string
}

variable "partial_mirror_value2" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Mirror2 Size in GiB configuration (0 - 65535 GiB)."
  EOT
  type        = string
}

variable "partial_mirror_value3" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Mirror3 Size in GiB configuration (0 - 65535 GiB)."
  EOT
  type        = string
}

variable "partial_mirror_value4" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Partial Mirror4 Size in GiB configuration (0 - 65535 GiB)."
  EOT
  type        = string
}

variable "patrol_scrub" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Patrol Scrub configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring PatrolScrub token.
  * Enable at End of POST - Value - Enable at End of POST for configuring PatrolScrub token.
  * enabled - Value - enabled for configuring PatrolScrub token."
  EOT
  type        = string
}

variable "patrol_scrub_duration" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Patrol Scrub Interval configuration (5 - 23 Hour)."
  EOT
  type        = string
}

variable "pc_ie_ras_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe RAS Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pc_ie_ssd_hot_plug_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVMe SSD Hot-Plug Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pch_usb30mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting xHCI Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pci_option_ro_ms" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting All PCIe Slots OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring PciOptionRoMs token.
  * enabled - Value - enabled for configuring PciOptionRoMs token.
  * Legacy Only - Value - Legacy Only for configuring PciOptionRoMs token.
  * UEFI Only - Value - UEFI Only for configuring PciOptionRoMs token."
  EOT
  type        = string
}

variable "pci_rom_clp" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCI ROM CLP configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_ari_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe ARI Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieAriSupport token.
  * disabled - Value - disabled for configuring PcieAriSupport token.
  * enabled - Value - enabled for configuring PcieAriSupport token."
  EOT
  type        = string
}

variable "pcie_pll_ssc" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe PLL SSC configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PciePllSsc token.
  * disabled - Value - Disabled for configuring PciePllSsc token.
  * ZeroPointFive - Value - ZeroPointFive for configuring PciePllSsc token."
  EOT
  type        = string
}

variable "pcie_slot_mraid1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting MRAID1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotMraid1linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotMraid1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotMraid1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotMraid1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotMraid1linkSpeed token.
  * GEN4 - Value - GEN4 for configuring PcieSlotMraid1linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_mraid1option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting MRAID1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_mraid2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting MRAID2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotMraid2linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotMraid2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotMraid2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotMraid2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotMraid2linkSpeed token.
  * GEN4 - Value - GEN4 for configuring PcieSlotMraid2linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_mraid2option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting MRAID2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_mstorraid_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot MSTOR Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotMstorraidLinkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotMstorraidLinkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotMstorraidLinkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotMstorraidLinkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotMstorraidLinkSpeed token.
  * GEN4 - Value - GEN4 for configuring PcieSlotMstorraidLinkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_mstorraid_option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot MSTOR RAID OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_nvme1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotNvme1linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotNvme1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotNvme1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotNvme1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotNvme1linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_nvme1option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_nvme2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotNvme2linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotNvme2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotNvme2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotNvme2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotNvme2linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_nvme2option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_nvme3link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 3 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotNvme3linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotNvme3linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotNvme3linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotNvme3linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotNvme3linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_nvme3option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 3 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_nvme4link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 4 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotNvme4linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotNvme4linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotNvme4linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotNvme4linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotNvme4linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_nvme4option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 4 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_nvme5link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 5 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotNvme5linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotNvme5linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotNvme5linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotNvme5linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotNvme5linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_nvme5option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 5 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pcie_slot_nvme6link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 6 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring PcieSlotNvme6linkSpeed token.
  * disabled - Value - Disabled for configuring PcieSlotNvme6linkSpeed token.
  * GEN1 - Value - GEN1 for configuring PcieSlotNvme6linkSpeed token.
  * GEN2 - Value - GEN2 for configuring PcieSlotNvme6linkSpeed token.
  * GEN3 - Value - GEN3 for configuring PcieSlotNvme6linkSpeed token."
  EOT
  type        = string
}

variable "pcie_slot_nvme6option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting NVME 6 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "pop_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Power ON Password configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "post_error_pause" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting POST Error Pause configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "post_package_repair" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Post Package Repair configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - Disabled for configuring PostPackageRepair token.
  * Hard PPR - Value - Hard PPR for configuring PostPackageRepair token."
  EOT
  type        = string
}

variable "processor_c1e" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Processor C1E configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "processor_c3report" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Processor C3 Report configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "processor_c6report" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Processor C6 Report configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "processor_cstate" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting CPU C State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "psata" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting P-SATA Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * AHCI - Value - AHCI for configuring Psata token.
  * disabled - Value - Disabled for configuring Psata token.
  * LSI SW RAID - Value - LSI SW RAID for configuring Psata token."
  EOT
  type        = string
}

variable "pstate_coord_type" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting P-STATE Coordination configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * HW ALL - Value - HW ALL for configuring PstateCoordType token.
  * SW ALL - Value - SW ALL for configuring PstateCoordType token.
  * SW ANY - Value - SW ANY for configuring PstateCoordType token."
  EOT
  type        = string
}

variable "putty_key_pad" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Putty KeyPad configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * ESCN - Value - ESCN for configuring PuttyKeyPad token.
  * LINUX - Value - LINUX for configuring PuttyKeyPad token.
  * SCO - Value - SCO for configuring PuttyKeyPad token.
  * VT100 - Value - VT100 for configuring PuttyKeyPad token.
  * VT400 - Value - VT400 for configuring PuttyKeyPad token.
  * XTERMR6 - Value - XTERMR6 for configuring PuttyKeyPad token."
  EOT
  type        = string
}

variable "pwr_perf_tuning" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Power Performance Tuning configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * bios - Value - BIOS for configuring PwrPerfTuning token.
  * os - Value - os for configuring PwrPerfTuning token.
  * peci - Value - peci for configuring PwrPerfTuning token."
  EOT
  type        = string
}

variable "qpi_link_frequency" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting QPI Link Frequency Select configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 6.4-gt/s - Value - 6.4-gt/s for configuring QpiLinkFrequency token.
  * 7.2-gt/s - Value - 7.2-gt/s for configuring QpiLinkFrequency token.
  * 8.0-gt/s - Value - 8.0-gt/s for configuring QpiLinkFrequency token.
  * 9.6-gt/s - Value - 9.6-gt/s for configuring QpiLinkFrequency token.
  * auto - Value - auto for configuring QpiLinkFrequency token."
  EOT
  type        = string
}

variable "qpi_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting UPI Link Frequency Select configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 10.4GT/s - Value - 10.4GT/s for configuring QpiLinkSpeed token.
  * 11.2GT/s - Value - 11.2GT/s for configuring QpiLinkSpeed token.
  * 9.6GT/s - Value - 9.6GT/s for configuring QpiLinkSpeed token.
  * Auto - Value - Auto for configuring QpiLinkSpeed token."
  EOT
  type        = string
}

variable "qpi_snoop_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting QPI Snoop Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * auto - Value - auto for configuring QpiSnoopMode token.
  * cluster-on-die - Value - cluster-on-die for configuring QpiSnoopMode token.
  * early-snoop - Value - early-snoop for configuring QpiSnoopMode token.
  * home-directory-snoop - Value - home-directory-snoop for configuring QpiSnoopMode token.
  * home-directory-snoop-with-osb - Value - home-directory-snoop-with-osb for configuring QpiSnoopMode token.
  * home-snoop - Value - home-snoop for configuring QpiSnoopMode token."
  EOT
  type        = string
}

variable "rank_inter_leave" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Rank Interleaving configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1-way - Value - 1-way for configuring RankInterLeave token.
  * 2-way - Value - 2-way for configuring RankInterLeave token.
  * 4-way - Value - 4-way for configuring RankInterLeave token.
  * 8-way - Value - 8-way for configuring RankInterLeave token.
  * auto - Value - auto for configuring RankInterLeave token."
  EOT
  type        = string
}

variable "redirection_after_post" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Redirection After BIOS POST configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Always Enable - Value - Always Enable for configuring RedirectionAfterPost token.
  * Bootloader - Value - Bootloader for configuring RedirectionAfterPost token."
  EOT
  type        = string
}

variable "sata_mode_select" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SATA Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * AHCI - Value - AHCI for configuring SataModeSelect token.
  * disabled - Value - Disabled for configuring SataModeSelect token.
  * LSI SW RAID - Value - LSI SW RAID for configuring SataModeSelect token."
  EOT
  type        = string
}

variable "select_memory_ras_configuration" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Memory RAS Configuration configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * adddc-sparing - Value - adddc-sparing for configuring SelectMemoryRasConfiguration token.
  * lockstep - Value - lockstep for configuring SelectMemoryRasConfiguration token.
  * maximum-performance - Value - maximum-performance for configuring SelectMemoryRasConfiguration token.
  * mirror-mode-1lm - Value - mirror-mode-1lm for configuring SelectMemoryRasConfiguration token.
  * mirroring - Value - mirroring for configuring SelectMemoryRasConfiguration token.
  * partial-mirror-mode-1lm - Value - partial-mirror-mode-1lm for configuring SelectMemoryRasConfiguration token.
  * sparing - Value - sparing for configuring SelectMemoryRasConfiguration token."
  EOT
  type        = string
}

variable "select_ppr_type" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PPR Type configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SelectPprType token.
  * Hard PPR - Value - Hard PPR for configuring SelectPprType token.
  * Soft PPR - Value - Soft PPR for configuring SelectPprType token."
  EOT
  type        = string
}

variable "serial_port_aenable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Serial A Enable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "sev" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Secured Encrypted Virtualization configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 253 ASIDs - Value - 253 ASIDs for configuring Sev token.
  * 509 ASIDs - Value - 509 ASIDs for configuring Sev token.
  * Auto - Value - Auto for configuring Sev token."
  EOT
  type        = string
}

variable "sgx_auto_registration_agent" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX Auto MP Registration Agent configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "sgx_epoch0" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX Epoch 0 configuration (0 - ffffffffffffffff Hash byte 7-0)."
  EOT
  type        = string
}

variable "sgx_epoch1" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX Epoch 1 configuration (0 - ffffffffffffffff Hash byte 7-0)."
  EOT
  type        = string
}

variable "sgx_factory_reset" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX Factory Reset configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "sgx_le_pub_key_hash0" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX PubKey Hash0 configuration (0 - ffffffffffffffff Hash byte 7-0)."
  EOT
  type        = string
}

variable "sgx_le_pub_key_hash1" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX PubKey Hash1 configuration (0 - ffffffffffffffff Hash byte 15-8)."
  EOT
  type        = string
}

variable "sgx_le_pub_key_hash2" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX PubKey Hash2 configuration (0 - ffffffffffffffff Hash byte 23-16)."
  EOT
  type        = string
}

variable "sgx_le_pub_key_hash3" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX PubKey Hash3 configuration (0 - ffffffffffffffff Hash byte 31-24)."
  EOT
  type        = string
}

variable "sgx_le_wr" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX Write Enable configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "sgx_package_info_in_band_access" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX Package Information In-Band Access configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "sgx_qos" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SGX QoS configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "single_pctl_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Single PCTL configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * No - Value - No for configuring SinglePctlEnable token.
  * Yes - Value - Yes for configuring SinglePctlEnable token."
  EOT
  type        = string
}

variable "slot10link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:10 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot10linkSpeed token.
  * disabled - Value - Disabled for configuring Slot10linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot10linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot10linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot10linkSpeed token."
  EOT
  type        = string
}

variable "slot10state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 10 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot10state token.
  * enabled - Value - enabled for configuring Slot10state token.
  * Legacy Only - Value - Legacy Only for configuring Slot10state token.
  * UEFI Only - Value - UEFI Only for configuring Slot10state token."
  EOT
  type        = string
}

variable "slot11link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:11 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot11linkSpeed token.
  * disabled - Value - Disabled for configuring Slot11linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot11linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot11linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot11linkSpeed token."
  EOT
  type        = string
}

variable "slot11state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 11 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot12link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:12 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot12linkSpeed token.
  * disabled - Value - Disabled for configuring Slot12linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot12linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot12linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot12linkSpeed token."
  EOT
  type        = string
}

variable "slot12state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 12 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot13state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 13 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot14state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 14 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot1linkSpeed token.
  * disabled - Value - Disabled for configuring Slot1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot1linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot1linkSpeed token."
  EOT
  type        = string
}

variable "slot1state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 1 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot1state token.
  * enabled - Value - enabled for configuring Slot1state token.
  * Legacy Only - Value - Legacy Only for configuring Slot1state token.
  * UEFI Only - Value - UEFI Only for configuring Slot1state token."
  EOT
  type        = string
}

variable "slot2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot2linkSpeed token.
  * disabled - Value - Disabled for configuring Slot2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot2linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot2linkSpeed token."
  EOT
  type        = string
}

variable "slot2state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 2 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot2state token.
  * enabled - Value - enabled for configuring Slot2state token.
  * Legacy Only - Value - Legacy Only for configuring Slot2state token.
  * UEFI Only - Value - UEFI Only for configuring Slot2state token."
  EOT
  type        = string
}

variable "slot3link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 3 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot3linkSpeed token.
  * disabled - Value - Disabled for configuring Slot3linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot3linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot3linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot3linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot3linkSpeed token."
  EOT
  type        = string
}

variable "slot3state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 3 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot3state token.
  * enabled - Value - enabled for configuring Slot3state token.
  * Legacy Only - Value - Legacy Only for configuring Slot3state token.
  * UEFI Only - Value - UEFI Only for configuring Slot3state token."
  EOT
  type        = string
}

variable "slot4link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 4 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot4linkSpeed token.
  * disabled - Value - Disabled for configuring Slot4linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot4linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot4linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot4linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot4linkSpeed token."
  EOT
  type        = string
}

variable "slot4state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 4 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot4state token.
  * enabled - Value - enabled for configuring Slot4state token.
  * Legacy Only - Value - Legacy Only for configuring Slot4state token.
  * UEFI Only - Value - UEFI Only for configuring Slot4state token."
  EOT
  type        = string
}

variable "slot5link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 5 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot5linkSpeed token.
  * disabled - Value - Disabled for configuring Slot5linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot5linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot5linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot5linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot5linkSpeed token."
  EOT
  type        = string
}

variable "slot5state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 5 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot5state token.
  * enabled - Value - enabled for configuring Slot5state token.
  * Legacy Only - Value - Legacy Only for configuring Slot5state token.
  * UEFI Only - Value - UEFI Only for configuring Slot5state token."
  EOT
  type        = string
}

variable "slot6link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 6 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot6linkSpeed token.
  * disabled - Value - Disabled for configuring Slot6linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot6linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot6linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot6linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot6linkSpeed token."
  EOT
  type        = string
}

variable "slot6state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 6 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot6state token.
  * enabled - Value - enabled for configuring Slot6state token.
  * Legacy Only - Value - Legacy Only for configuring Slot6state token.
  * UEFI Only - Value - UEFI Only for configuring Slot6state token."
  EOT
  type        = string
}

variable "slot7link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 7 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot7linkSpeed token.
  * disabled - Value - Disabled for configuring Slot7linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot7linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot7linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot7linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot7linkSpeed token."
  EOT
  type        = string
}

variable "slot7state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 7 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot7state token.
  * enabled - Value - enabled for configuring Slot7state token.
  * Legacy Only - Value - Legacy Only for configuring Slot7state token.
  * UEFI Only - Value - UEFI Only for configuring Slot7state token."
  EOT
  type        = string
}

variable "slot8link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 8 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot8linkSpeed token.
  * disabled - Value - Disabled for configuring Slot8linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot8linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot8linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot8linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot8linkSpeed token."
  EOT
  type        = string
}

variable "slot8state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 8 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot8state token.
  * enabled - Value - enabled for configuring Slot8state token.
  * Legacy Only - Value - Legacy Only for configuring Slot8state token.
  * UEFI Only - Value - UEFI Only for configuring Slot8state token."
  EOT
  type        = string
}

variable "slot9link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot: 9 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Slot9linkSpeed token.
  * disabled - Value - Disabled for configuring Slot9linkSpeed token.
  * GEN1 - Value - GEN1 for configuring Slot9linkSpeed token.
  * GEN2 - Value - GEN2 for configuring Slot9linkSpeed token.
  * GEN3 - Value - GEN3 for configuring Slot9linkSpeed token.
  * GEN4 - Value - GEN4 for configuring Slot9linkSpeed token."
  EOT
  type        = string
}

variable "slot9state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot 9 State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring Slot9state token.
  * enabled - Value - enabled for configuring Slot9state token.
  * Legacy Only - Value - Legacy Only for configuring Slot9state token.
  * UEFI Only - Value - UEFI Only for configuring Slot9state token."
  EOT
  type        = string
}

variable "slot_flom_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:FLOM Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFlomLinkSpeed token.
  * disabled - Value - Disabled for configuring SlotFlomLinkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFlomLinkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFlomLinkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFlomLinkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme10link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 10 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme10linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme10linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme10linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme10linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme10linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme10linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme10option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 10 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme11link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 11 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme11linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme11linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme11linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme11linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme11linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme11linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme11option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 11 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme12link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 12 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme12linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme12linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme12linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme12linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme12linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme12linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme12option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 12 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme13option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 13 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme14option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 14 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme15option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 15 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme16option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 16 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme17option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 17 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme18option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 18 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme19option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 19 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Front NVME 1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme1linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme1linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme1linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme1option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme20option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 20 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme21option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 21 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme22option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 22 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme23option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 23 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme24option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 24 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Front NVME 2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme2linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme2linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme2linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme2option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme3link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 3 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme3linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme3linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme3linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme3linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme3linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme3linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme3option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 3 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme4link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 4 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme4linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme4linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme4linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme4linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme4linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme4linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme4option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 4 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme5link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 5 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme5linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme5linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme5linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme5linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme5linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme5linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme5option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 5 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme6link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 6 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme6linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme6linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme6linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme6linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme6linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme6linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme6option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 6 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme7link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 7 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme7linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme7linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme7linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme7linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme7linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme7linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme7option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 7 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme8link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 8 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme8linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme8linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme8linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme8linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme8linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme8linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme8option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 8 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_nvme9link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 9 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontNvme9linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontNvme9linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontNvme9linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontNvme9linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontNvme9linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotFrontNvme9linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_nvme9option_rom" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Front NVME 9 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_front_slot5link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Front1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontSlot5linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontSlot5linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontSlot5linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontSlot5linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontSlot5linkSpeed token."
  EOT
  type        = string
}

variable "slot_front_slot6link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Front2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotFrontSlot6linkSpeed token.
  * disabled - Value - Disabled for configuring SlotFrontSlot6linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotFrontSlot6linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotFrontSlot6linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotFrontSlot6linkSpeed token."
  EOT
  type        = string
}

variable "slot_gpu1state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu2state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu3state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 3 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu4state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 4 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu5state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 5 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu6state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 6 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu7state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 7 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_gpu8state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting GPU 8 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_hba_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:HBA Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotHbaLinkSpeed token.
  * disabled - Value - Disabled for configuring SlotHbaLinkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotHbaLinkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotHbaLinkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotHbaLinkSpeed token."
  EOT
  type        = string
}

variable "slot_hba_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:HBA OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SlotHbaState token.
  * enabled - Value - enabled for configuring SlotHbaState token.
  * Legacy Only - Value - Legacy Only for configuring SlotHbaState token.
  * UEFI Only - Value - UEFI Only for configuring SlotHbaState token."
  EOT
  type        = string
}

variable "slot_lom1link" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe LOM:1 Link configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_lom2link" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe LOM:2 Link configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_mezz_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Slot Mezz State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SlotMezzState token.
  * enabled - Value - enabled for configuring SlotMezzState token.
  * Legacy Only - Value - Legacy Only for configuring SlotMezzState token.
  * UEFI Only - Value - UEFI Only for configuring SlotMezzState token."
  EOT
  type        = string
}

variable "slot_mlom_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:MLOM Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotMlomLinkSpeed token.
  * disabled - Value - Disabled for configuring SlotMlomLinkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotMlomLinkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotMlomLinkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotMlomLinkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotMlomLinkSpeed token."
  EOT
  type        = string
}

variable "slot_mlom_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot MLOM OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SlotMlomState token.
  * enabled - Value - enabled for configuring SlotMlomState token.
  * Legacy Only - Value - Legacy Only for configuring SlotMlomState token.
  * UEFI Only - Value - UEFI Only for configuring SlotMlomState token."
  EOT
  type        = string
}

variable "slot_mraid_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting MRAID Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotMraidLinkSpeed token.
  * disabled - Value - Disabled for configuring SlotMraidLinkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotMraidLinkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotMraidLinkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotMraidLinkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotMraidLinkSpeed token."
  EOT
  type        = string
}

variable "slot_mraid_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot MRAID OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n10state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N10 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n11state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N11 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n12state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N12 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n13state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N13 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n14state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N14 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n15state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N15 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n16state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N16 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n17state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N17 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n18state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N18 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n19state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N19 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n1state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SlotN1state token.
  * enabled - Value - enabled for configuring SlotN1state token.
  * Legacy Only - Value - Legacy Only for configuring SlotN1state token.
  * UEFI Only - Value - UEFI Only for configuring SlotN1state token."
  EOT
  type        = string
}

variable "slot_n20state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N20 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n21state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N21 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n22state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N22 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n23state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N23 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n24state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N24 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n2state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SlotN2state token.
  * enabled - Value - enabled for configuring SlotN2state token.
  * Legacy Only - Value - Legacy Only for configuring SlotN2state token.
  * UEFI Only - Value - UEFI Only for configuring SlotN2state token."
  EOT
  type        = string
}

variable "slot_n3state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N3 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n4state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N4 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n5state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N5 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n6state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N6 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n7state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N7 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n8state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N8 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_n9state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot N9 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_raid_link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting RAID Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRaidLinkSpeed token.
  * disabled - Value - Disabled for configuring SlotRaidLinkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRaidLinkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRaidLinkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRaidLinkSpeed token."
  EOT
  type        = string
}

variable "slot_raid_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot RAID OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRearNvme1linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRearNvme1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRearNvme1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRearNvme1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRearNvme1linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotRearNvme1linkSpeed token."
  EOT
  type        = string
}

variable "slot_rear_nvme1state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 1 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRearNvme2linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRearNvme2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRearNvme2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRearNvme2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRearNvme2linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotRearNvme2linkSpeed token."
  EOT
  type        = string
}

variable "slot_rear_nvme2state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 2 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme3link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Rear NVME 3 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRearNvme3linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRearNvme3linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRearNvme3linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRearNvme3linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRearNvme3linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotRearNvme3linkSpeed token."
  EOT
  type        = string
}

variable "slot_rear_nvme3state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 3 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme4link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Rear NVME 4 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRearNvme4linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRearNvme4linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRearNvme4linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRearNvme4linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRearNvme4linkSpeed token.
  * GEN4 - Value - GEN4 for configuring SlotRearNvme4linkSpeed token."
  EOT
  type        = string
}

variable "slot_rear_nvme4state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 4 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme5state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 5 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme6state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 6 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme7state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 7 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_rear_nvme8state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Rear NVME 8 OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "slot_riser1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser1linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser1linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser1slot1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser1 Slot1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser1slot1linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser1slot1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser1slot1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser1slot1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser1slot1linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser1slot2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser1 Slot2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser1slot2linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser1slot2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser1slot2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser1slot2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser1slot2linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser1slot3link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser1 Slot3 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser1slot3linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser1slot3linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser1slot3linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser1slot3linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser1slot3linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser2linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser2linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser2slot4link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser2 Slot4 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser2slot4linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser2slot4linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser2slot4linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser2slot4linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser2slot4linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser2slot5link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser2 Slot5 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser2slot5linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser2slot5linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser2slot5linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser2slot5linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser2slot5linkSpeed token."
  EOT
  type        = string
}

variable "slot_riser2slot6link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:Riser2 Slot6 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotRiser2slot6linkSpeed token.
  * disabled - Value - Disabled for configuring SlotRiser2slot6linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotRiser2slot6linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotRiser2slot6linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotRiser2slot6linkSpeed token."
  EOT
  type        = string
}

variable "slot_sas_state" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:SAS OptionROM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * disabled - Value - disabled for configuring SlotSasState token.
  * enabled - Value - enabled for configuring SlotSasState token.
  * Legacy Only - Value - Legacy Only for configuring SlotSasState token.
  * UEFI Only - Value - UEFI Only for configuring SlotSasState token."
  EOT
  type        = string
}

variable "slot_ssd_slot1link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:FrontSSD1 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotSsdSlot1linkSpeed token.
  * disabled - Value - Disabled for configuring SlotSsdSlot1linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotSsdSlot1linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotSsdSlot1linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotSsdSlot1linkSpeed token."
  EOT
  type        = string
}

variable "slot_ssd_slot2link_speed" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting PCIe Slot:FrontSSD2 Link Speed configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SlotSsdSlot2linkSpeed token.
  * disabled - Value - Disabled for configuring SlotSsdSlot2linkSpeed token.
  * GEN1 - Value - GEN1 for configuring SlotSsdSlot2linkSpeed token.
  * GEN2 - Value - GEN2 for configuring SlotSsdSlot2linkSpeed token.
  * GEN3 - Value - GEN3 for configuring SlotSsdSlot2linkSpeed token."
  EOT
  type        = string
}

variable "smee" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SMEE configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "smt_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SMT Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring SmtMode token.
  * Off - Value - Off for configuring SmtMode token."
  EOT
  type        = string
}

variable "snc" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Sub Numa Clustering configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Snc token.
  * disabled - Value - disabled for configuring Snc token.
  * enabled - Value - enabled for configuring Snc token."
  EOT
  type        = string
}

variable "snoopy_mode_for2lm" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Snoopy Mode for 2LM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "snoopy_mode_for_ad" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Snoopy Mode for AD configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "sparing_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Sparing Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * dimm-sparing - Value - dimm-sparing for configuring SparingMode token.
  * rank-sparing - Value - rank-sparing for configuring SparingMode token."
  EOT
  type        = string
}

variable "sr_iov" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SR-IOV Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "streamer_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting DCU Streamer Prefetch configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "svm_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting SVM Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "terminal_type" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Terminal Type configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * pc-ansi - Value - pc-ansi for configuring TerminalType token.
  * vt100 - Value - vt100 for configuring TerminalType token.
  * vt100-plus - Value - vt100-plus for configuring TerminalType token.
  * vt-utf8 - Value - vt-utf8 for configuring TerminalType token."
  EOT
  type        = string
}

variable "tpm_control" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Trusted Platform Module State configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "tpm_pending_operation" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting TPM Pending Operation configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * None - Value - None for configuring TpmPendingOperation token.
  * TpmClear - Value - TpmClear for configuring TpmPendingOperation token."
  EOT
  type        = string
}

variable "tpm_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting TPM Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "tsme" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Transparent Secure Memory Encryption configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring Tsme token.
  * disabled - Value - disabled for configuring Tsme token.
  * enabled - Value - enabled for configuring Tsme token."
  EOT
  type        = string
}

variable "txt_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Intel Trusted Execution Technology Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "ucsm_boot_order_rule" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Boot Order Rules configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Loose - Value - Loose for configuring UcsmBootOrderRule token.
  * Strict - Value - Strict for configuring UcsmBootOrderRule token."
  EOT
  type        = string
}

variable "ufs_disable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Uncore Frequency Scaling configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "uma_based_clustering" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting UMA Based Clustering configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Disable (All2All) - Value - Disable (All2All) for configuring UmaBasedClustering token.
  * Hemisphere (2-clusters) - Value - Hemisphere (2-clusters) for configuring UmaBasedClustering token."
  EOT
  type        = string
}

variable "usb_emul6064" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Port 60/64 Emulation configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_port_front" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting USB Port Front configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_port_internal" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting USB Port Internal configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_port_kvm" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting USB Port KVM configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_port_rear" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting USB Port Rear configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_port_sd_card" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting USB Port SD Card configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_port_vmedia" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting USB Port VMedia configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "usb_xhci_support" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting XHCI Legacy Support configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "vga_priority" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting VGA Priority configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Offboard - Value - Offboard for configuring VgaPriority token.
  * Onboard - Value - Onboard for configuring VgaPriority token.
  * Onboard VGA Disabled - Value - Onboard VGA Disabled for configuring VgaPriority token."
  EOT
  type        = string
}

variable "vmd_enable" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting VMD Enablement configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * enabled - Enables the BIOS setting.
  * disabled - Disables the BIOS setting."
  EOT
  type        = string
}

variable "vol_memory_mode" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Volatile Memory Mode configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * 1LM - Value - 1LM for configuring VolMemoryMode token.
  * 2LM - Value - 2LM for configuring VolMemoryMode token."
  EOT
  type        = string
}

variable "work_load_config" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting Workload Configuration configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Balanced - Value - Balanced for configuring WorkLoadConfig token.
  * I/O Sensitive - Value - I/O Sensitive for configuring WorkLoadConfig token.
  * NUMA - Value - NUMA for configuring WorkLoadConfig token.
  * UMA - Value - UMA for configuring WorkLoadConfig token."
  EOT
  type        = string
}

variable "xpt_prefetch" {
  default     = "platform-default"
  description = <<-EOT
  BIOS Token for setting XPT Prefetch configuration.
  * platform-default - Default value used by the platform for the BIOS setting.
  * Auto - Value - Auto for configuring XptPrefetch token.
  * disabled - Value - disabled for configuring XptPrefetch token.
  * enabled - Value - enabled for configuring XptPrefetch token."
  EOT
  type        = string
}
