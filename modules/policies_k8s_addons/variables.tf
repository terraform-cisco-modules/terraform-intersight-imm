#____________________________________________________________
#
# Kubernetes Addon Policy Variables Section.
#____________________________________________________________

variable "addon" {
  default     = ""
  description = "The Addon to add to this Policy.  Options are:\r\n * ccp-monitor\r\n * kubernetes-dashboard."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "install_strategy" {
  default     = "Always"
  description = "Addon install strategy to determine whether an addon is installed if not present.\r\n * None - Unspecified install strategy.\r\n * NoAction - No install action performed.\r\n * InstallOnly - Only install in green field. No action in case of failure or removal.\r\n * Always - Attempt install if chart is not already installed."
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
  description = "Addon upgrade strategy to determine whether an addon configuration is overwritten on upgrade.\r\n * None - Unspecified upgrade strategy.\r\n * NoAction - This choice enables No upgrades to be performed.\r\n * UpgradeOnly - Attempt upgrade if chart or overrides options change, no action on upgrade failure.\r\n * ReinstallOnFailure - Attempt upgrade first. Remove and install on upgrade failure.\r\n * AlwaysReinstall - Always remove older release and reinstall."
  type        = string
}

