#____________________________________________________________
#
# Operating System Repository Variables Section
#____________________________________________________________

variable "catalog" {
  default     = []
  description = "A reference to a softwarerepositoryCatalog resource."
  type = list(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "import_action" {
  default     = ""
  description = <<-EOT
  The action to be performed on the imported file. If 'PreCache' is set, the image will be cached in Appliance. Applicable in Intersight appliance deployment. If 'Evict' is set, the cached file will be removed. Applicable in Intersight appliance deployment. If 'GeneratePreSignedUploadUrl' is set, generates pre signed URL (s) for the file to be imported into the repository. Applicable for local machine source. The URL (s) will be populated under LocalMachine file server. If 'CompleteImportProcess' is set, the ImportState is marked as 'Imported'. Applicable for local machine source. If 'Cancel' is set, the ImportState is marked as 'Failed'. Applicable for local machine source.
  * None - No action should be taken on the imported file.
  * Cancel - The cancel import process for the file into the repository.
  * CompleteImportProcess - Mark that the import process of the file into the repository is complete.
  * Extract - The action to extract the file in the external repository.
  * Evict - Evict the cached file from the Intersight Appliance.
  * GeneratePreSignedDownloadUrl - Generate pre signed URL of file in the repository to download.
  * GeneratePreSignedUploadUrl - Generate pre signed URL of file for importing into the repository.
  * MarkImportFailed - Mark to indicate that the import process of the file into the repository failed.
  * PreCache - Cache the file into the Intersight Appliance.
  EOT
  type        = string
}

variable "md5sum" {
  default     = ""
  description = "The md5sum checksum of the file. This information is available for all Cisco distributed images and files imported to the local repository."
  type        = string
}

variable "name" {
  default     = "repository"
  description = "Name for the Policy."
  type        = string
}

variable "repository" {
  default     = {}
  description = <<-EOT
  Location of the file in an external repository.
  * CIFS -
    - MountOptions - Leave the field blank or enter one or more comma seperated options from the following. For Example, "", "soft", "soft, nounix".  All Options are:
      * soft
      * nounix
      * noserviceino
      * guest
      * USERNAME=VALUE
      * PASSWORD=VALUE
      * sec=VALUE (VALUE could be None, Ntlm, Ntlmi, Ntlmssp, Ntlmsspi, Ntlmv2, Ntlmv2i)
    - Below is an example CIFS Mount Repository input:
      additional_properties = jsonencode({
        FileLocation = ""
        MountOptions = ""
        Password     = ""
        Username     = ""
      })
      object_type = "softwarerepository.CifsServer"
  * HTTP(S):
    additional_properties = jsonencode({
      LocationLink = ""
      Password     = ""
      Username     = ""
    })
    object_type = "softwarerepository.HttpServer"
  * NFS:
    - MountOptions - Leave the field blank or enter one or more comma seperated options from the following.For Example, "", "ro", "ro,rw".  All options are:
      * ro
      * rw
      * nolock
      * noexec
      * soft
      * PORT=VALUE
      * timeo=VALUE
      * retry=VALUE
    - Below is an example CIFS Mount Repository input:
      additional_properties = jsonencode({
        FileLocation = ""
        MountOptions = ""
      })
      object_type = "softwarerepository.NfsServer"
  EOT
  type = map(object(
    {
      additional_properties = any
      object_type           = string
    }
  ))
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "sha512sum" {
  default     = ""
  description = "The sha512sum of the file. This information is available for all Cisco distributed images and files imported to the local repository."
  type        = string
}

variable "size" {
  default     = null
  description = "The size (in bytes) of the file. This information is available for all Cisco distributed images and files imported to the local repository."
  type        = number
}

variable "software_advisory_url" {
  default     = ""
  description = "The software advisory, if any, provided by the vendor for this file."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vendor" {
  default     = "VMware"
  description = <<-EOT
  The vendor or publisher of this file.  Options are:
  * CentOS
  * Citrix
  * Microsoft
  * Oracle
  * Red Hat
  * SuSE
  * Ubuntu
  * VMware
  EOT
  type        = string
}

variable "vendor_version" {
  default     = ""
  description = <<-EOT
  Vendor provided version for the file.  Options are:
  * CentOS
    - CentOS 6.5
    - CentOS 6.6
    - CentOS 6.7
    - CentOS 6.8
    - CentOS 6.9
    - CentOS 6.10
    - CentOS 7.0
    - CentOS 7.1
    - CentOS 7.2
    - CentOS 7.3
    - CentOS 7.4
    - CentOS 7.5
    - CentOS 7.6
    - CentOS 7.7
    - CentOS 7.8
    - CentOS 7.9
    - CentOS 8.0
    - CentOS 8.1
    - CentOS 8.2
    - CentOS 8.3
  * Citrix
    - Citrix Hypervisor 8.0
    - Citrix Hypervisor 8.1
    - Citrix Hypervisor 8.2 LTSR
    - XenServer 6.1
    - XenServer 6.2
    - XenServer 6.5
    - XenServer 6.5 SP1
    - XenServer 7.0
    - XenServer 7.1
    - XenServer 7.1 LTSR
    - XenServer 7.2
    - XenServer 7.3
    - XenServer 7.4
    - XenServer 7.5
    - XenServer 7.6
  * Microsoft
    - Windows Server 2008 R2 SP1
    - Windows Server 2012
    - Windows Server 2012 R2
    - Windows Server 2016
    - Windows Server 2019
    - Windows Server 2022
  * Oracle
    - OVM 3.2.9
    - OVM 3.2.10
    - OVM 3.2.11
    - OVM 3.3.1
    - OVM 3.3.2
    - OVM 3.3.3
    - OVM 3.3.4
    - OVM 3.3.5
    - OVM 3.4.1
    - OVM 3.4.2
    - OVM 3.4.3
    - OVM 3.4.4
    - OVM 3.4.5
    - OVM 3.4.6
    - OVM 3.4.7
    - Oracle Linux (UEK 2.6.39-400.x)
    - Oracle Linux (UEK 3.8.13-26.x)
    - Oracle Linux (UEK 3.8.13-44.x)
    - Oracle Linux (UEK 3.8.13-68.x)
    - Oracle Linux (UEK 3.8.13-98.x)
    - Oracle Linux (UEK 3.8.13-118.x)
    - Oracle Linux (UEK 4.1.12-32.x)
    - Oracle Linux (UEK 4.1.12-37.x)
    - Oracle Linux (UEK 4.1.12-61.x)
    - Oracle Linux (UEK 4.1.12-94.x)
    - Oracle Linux (UEK 4.1.12-103.x)
    - Oracle Linux (UEK 4.1.12-112.x)
    - Oracle Linux (UEK 4.1.12-124.x)
    - Oracle Linux (UEK 4.14.35-1818.x)
    - Oracle Linux (UEK 4.14.35-1844.x)
    - Oracle Linux (UEK 4.14.35-1902.x)
    - Oracle Linux (UEK 4.14.35-2025.x)
    - Oracle Linux (UEK 4.14.35-2047.x)
    - Oracle Linux (UEK 5.4.17-2011.x)
    - Oracle Linux (UEK 5.4.17-2036.x)
  * Red Hat
    - Red Hat Enterprise Linux 5.9
    - Red Hat Enterprise Linux 5.10
    - Red Hat Enterprise Linux 5.11
    - Red Hat Enterprise Linux 6.4
    - Red Hat Enterprise Linux 6.5
    - Red Hat Enterprise Linux 6.6
    - Red Hat Enterprise Linux 6.7
    - Red Hat Enterprise Linux 6.8
    - Red Hat Enterprise Linux 6.9
    - Red Hat Enterprise Linux 6.10
    - Red Hat Enterprise Linux 7.0
    - Red Hat Enterprise Linux 7.1
    - Red Hat Enterprise Linux 7.2
    - Red Hat Enterprise Linux 7.3
    - Red Hat Enterprise Linux 7.4
    - Red Hat Enterprise Linux 7.5
    - Red Hat Enterprise Linux 7.6
    - Red Hat Enterprise Linux 7.7
    - Red Hat Enterprise Linux 7.8
    - Red Hat Enterprise Linux 7.9
    - Red Hat Enterprise Linux 8.0
    - Red Hat Enterprise Linux 8.1
    - Red Hat Enterprise Linux 8.2
    - Red Hat Enterprise Linux 8.3
    - Red Hat Enterprise Linux 8.4
  * SuSE
    - SUSE Linux Enterprise Server 11.3
    - SUSE Linux Enterprise Server 11.4
    - SUSE Linux Enterprise Server 12.1
    - SUSE Linux Enterprise Server 12.2
    - SUSE Linux Enterprise Server 12.3
    - SUSE Linux Enterprise Server 12.3 w/kernel 4.4.126_94.22-1
    - SUSE Linux Enterprise Server 12.4
    - SUSE Linux Enterprise Server 12.5
    - SUSE Linux Enterprise Server 15
    - SUSE Linux Enterprise Server 15.1
    - SUSE Linux Enterprise Server 15.2
    - SUSE Linux Enterprise Server 15.3
  * Ubuntu
    - Ubuntu Server 12.04.4 LTS
    - Ubuntu Server 12.04.5 LTS
    - Ubuntu Server 14.04 LTS
    - Ubuntu Server 14.04.1 LTS
    - Ubuntu Server 14.04.2 LTS
    - Ubuntu Server 14.04.3 LTS
    - Ubuntu Server 14.04.4 LTS
    - Ubuntu Server 14.04.5 LTS
    - Ubuntu Server 16.04 LTS
    - Ubuntu Server 16.04.1 LTS
    - Ubuntu Server 16.04.2 LTS
    - Ubuntu Server 16.04.3 LTS
    - Ubuntu Server 16.04.4 LTS
    - Ubuntu Server 16.04.5 LTS
    - Ubuntu Server 16.04.6 LTS
    - Ubuntu Server 16.04.7 LTS
    - Ubuntu Server 18.04 LTS
    - Ubuntu Server 18.04.1 LTS
    - Ubuntu Server 18.04.2 LTS
    - Ubuntu Server 18.04.3 LTS
    - Ubuntu Server 18.04.4 LTS
    - Ubuntu Server 18.04.5 LTS
    - Ubuntu Server 20.04 LTS
    - Ubuntu Server 20.04.1 LTS
    - Ubuntu Server 20.04.2 LTS
  * VMware
    - ESXi 5.1 U1
    - ESXi 5.1 U2
    - ESXi 5.1 U3
    - ESXi 5.5
    - ESXi 5.5 U1
    - ESXi 5.5 U2
    - ESXi 5.5 U3
    - ESXi 6.0
    - ESXi 6.0 U1
    - ESXi 6.0 U2
    - ESXi 6.0 U3
    - ESXi 6.5
    - ESXi 6.5 U1
    - ESXi 6.5 U2
    - ESXi 6.5 U3
    - ESXi 6.7
    - ESXi 6.7 U1
    - ESXi 6.7 U2
    - ESXi 6.7 U3
    - ESXi 7.0
    - ESXi 7.0 U1
    - ESXi 7.0 U2
  EOT
  type        = string
}
