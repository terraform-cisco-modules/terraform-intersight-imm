#____________________________________________________________
#
# Server Firmware Variables Section.
#____________________________________________________________

variable "auth_password_direct" {
  default     = ""
  description = "Password for Direct Download Authentication."
  sensitive   = true
  type        = string
}

variable "auth_password_filesrv" {
  default     = ""
  description = "Password for File Server Authentication."
  sensitive   = true
  type        = string
}

variable "auth_username_direct" {
  default     = ""
  description = "Username for Direct Download Authentication."
  type        = string
}

variable "auth_username_filesrv" {
  default     = ""
  description = "Username for File Server Authentication."
  type        = string
}

variable "cifs_file_location" {
  default     = ""
  description = <<-EOT
  The location to the image file. The accepted format is:
   - IP-or-hostname/folder1/folder2/…/imageFile
  EOT
  type        = string
}

variable "cifs_mount_options" {
  default     = "none"
  description = <<-EOT
  Mount option (Authentication Protocol) as configured on the CIFS Server. Example:ntlmv2.
  * none - The default authentication protocol is decided by the endpoint.
  * ntlm - The external CIFS server is configured with ntlm as the authentication protocol.
  * ntlmi - Mount options of CIFS file server is ntlmi.
  * ntlmv2 - Mount options of CIFS file server is ntlmv2.
  * ntlmv2i - Mount options of CIFS file server is ntlmv2i.
  * ntlmssp - Mount options of CIFS file server is ntlmssp.
  * ntlmsspi - Mount options of CIFS file server is ntlmsspi.
  EOT
  type        = string
}

variable "exclude_component_list" {
  default     = []
  description = "An Array of Elements to Exclude from the Upgrade Proceedure."
  type        = set(string)
}

variable "file_server" {
  default     = ""
  description = "Location of the image in user software repository."
  type        = string
}

variable "http_image_url" {
  default     = ""
  description = <<-EOT
  HTTP/HTTPS link to the image. For a successful upgrade, the remote share server must have network connectivity with the CIMC of the selected devices.  Accepted formats are:
   - http[s]://server-hostname/share/image
   - http[s]://serverip/share/image
  EOT
  type        = string
}

variable "http_mount_options" {
  default     = ""
  description = "Mount option as configured on the HTTP server. Empty if nothing is configured."
  type        = string
}

variable "image_source" {
  default     = "cisco"
  description = <<-EOT
  Source type referring the image to be downloaded from CCO or from a local HTTPS server.
  * cisco - Image to be downloaded from Cisco software repository.
  * localHttp - Image to be downloaded from a https server.
  EOT
  type        = string
}

variable "map_type" {
  default     = "www"
  description = <<-EOT
  File server protocols such as CIFS, NFS, WWW for HTTP (S) that hosts the image.
  * cifs - File server protocol used is CIFS.
  * nfs - File server protocol used is NFS.
  * www - File server protocol used is WWW.
  EOT
  type        = string
}

variable "nfs_file_location" {
  default     = ""
  description = <<-EOT
  The location to the image file. The accepted format is:
   - IP-or-hostname/folder1/folder2/…/imageFile
  EOT
  type        = string
}

variable "nfs_mount_options" {
  default     = ""
  description = "Mount option as configured on the NFS Server. For example:nolock."
  type        = string
}

variable "serial" {
  description = "Serial Number of a Server."
  type        = string
}

variable "skip_estimate_impact" {
  default     = false
  description = "User has the option to skip the estimate impact calculation."
  type        = bool
}

variable "software_version" {
  description = "Version of UCS Software to Apply to the environment."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "upgrade_type" {
  default     = "direct_upgrade"
  description = <<-EOT
  Desired upgrade mode to choose either direct download based upgrade or network share upgrade.
  * direct_upgrade - Upgrade mode is direct download.
  * network_upgrade - Upgrade mode is network upgrade.
  EOT
  type        = string
}

variable "upgradeoption_direct" {
  default     = "upgrade_full"
  description = <<-EOT
  Option to control the upgrade, e.g., sd_upgrade_mount_only - download the image into sd and upgrade wait for the server on-next boot.
  * upgrade_full - The upgrade downloads or mounts the image, and reboots immediately for an upgrade.
  * upgrade_mount_only - The upgrade downloads or mounts the image. The upgrade happens in next reboot.
  EOT
  type        = string
}

variable "upgradeoption_filesrv" {
  default     = "nw_upgrade_full"
  description = <<-EOT
  Option to control the upgrade operation.  Options are:
  * nw_upgrade_full - Mount the image and immediately run the upgrade.  Network upgrade option for full upgrade.
  * nw_upgrade_mount_only - Mount the image from a file server and run the upgrade on the next boot.  Network upgrade mount only.
  EOT
  type        = string
}
