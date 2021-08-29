#____________________________________________________________
#
# Kubernetes Add-ons Policy Variables Section.
#____________________________________________________________

variable "addon" {
  default     = ""
  description = <<-EOT
  The Addon to add to this Policy.  Options are:
  * ccp-monitor
  * kubernetes-dashboard.
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "install_strategy" {
  default     = "Always"
  description = <<-EOT
  Addon install strategy to determine whether an addon is installed if not present.
  * Always - Attempt install if chart is not already installed.
  * InstallOnly - Only install in green field. No action in case of failure or removal.
  * NoAction - No install action performed.
  * None - Unspecified install strategy.
  EOT
  type        = string
}

variable "name" {
  default     = "k8s_addon"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "release_name" {
  default     = ""
  description = "Name for the helm release."
  type        = string
}

variable "release_namespace" {
  default     = ""
  description = "Namespace for the helm release."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "upgrade_strategy" {
  default     = "UpgradeOnly"
  description = <<-EOT
  Addon upgrade strategy to determine whether an addon configuration is overwritten on upgrade.
  * AlwaysReinstall - Always remove older release and reinstall.
  * None - Unspecified upgrade strategy.
  * NoAction - This choice enables No upgrades to be performed.
  * ReinstallOnFailure - Attempt upgrade first. Remove and install on upgrade failure.
  * UpgradeOnly - Attempt upgrade if chart or overrides options change, no action on upgrade failure.
  EOT
  type        = string
}

