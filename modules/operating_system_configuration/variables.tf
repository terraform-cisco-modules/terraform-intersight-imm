#____________________________________________________________
#
# Software Configuration Utility (SCU) Variables Section
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
  default     = "scu"
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

variable "release" {
  default     = []
  description = "A reference to a softwarerepositoryRelease resource."
  type        = set(string)
}
variable "release_notes_url" {
  default     = ""
  description = "The url for the release notes of this image."
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

variable "supported_models" {
  default = [
    "B-series",
    "C-series",
  ]
  description = <<-EOT
  List of Supported UCS Servers/Types.  Examples are:
  B-Series
  C-Series
  UCSB-B200-M5
  UCSB-B480-M5
  UCSC-C220-M5SX
  UCSC-C220-M5SN
  UCSC-C240-M5SX
  UCSC-C240-M5SN
  EOT
  type        = list(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vendor" {
  default     = "Cisco"
  description = <<-EOT
  The vendor or publisher of this file.  Options are:
  * Cisco
  EOT
  type        = string
}

variable "vendor_version" {
  default     = "6.2(1a)"
  description = <<-EOT
  Vendor provided version for the file.  Options are:
  * 6.0(4c)
  * 6.1(1b)
  * 6.1(2d)
  * 6.1(3c)
  * 6.2(1a)
  EOT
  type        = string
}
