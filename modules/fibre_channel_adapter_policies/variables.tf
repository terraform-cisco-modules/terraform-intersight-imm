#____________________________________________________________
#
# Fibre Channel Adapter Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "error_detection_timeout" {
  default     = 2000
  description = "Error Detection Timeout, also referred to as EDTOV, is the number of milliseconds to wait before the system assumes that an error has occurred."
  type        = number
}

variable "enable_fcp_error_recovery" {
  default     = false
  description = "Enables Fibre Channel Error recovery."
  type        = bool
}

variable "error_recovery_port_down_io_retry" {
  default     = 8
  description = "The number of times an I/O request to a port is retried because the port is busy before the system decides the port is unavailable.  Range is 0-255."
  type        = number
}

variable "error_recovery_io_retry_timeout" {
  default     = 5
  description = "The number of seconds the adapter waits before aborting the pending command and resending the same IO request. Range is 1-59."
  type        = number
}

variable "error_recovery_link_down_timeout" {
  default     = 30000
  description = "The number of milliseconds the port should actually be down before it is marked down and fabric connectivity is lost.  Range is 0-240000."
  type        = number
}

variable "error_recovery_port_down_timeout" {
  default     = 10000
  description = "The number of milliseconds a remote Fibre Channel port should be offline before informing the SCSI upper layer that the port is unavailable. For a server with a VIC adapter running ESXi, the recommended value is 10000. For a server with a port used to boot a Windows OS from the SAN, the recommended value is 5000 milliseconds.  Range is 0-240000."
  type        = number
}

variable "flogi_retries" {
  default     = 8
  description = "The number of times that the system tries to log in to the fabric after the first failure.  A Value greater than 0."
  type        = number
}

variable "flogi_timeout" {
  default     = 4000
  description = "The number of milliseconds that the system waits before it tries to log in again.  Range is 1000-255000."
  type        = number
}

variable "interrupt_mode" {
  default     = "MSIx"
  description = <<-EOT
  The preferred driver interrupt mode. This can be one of the following:
  * INTx - Line-based interrupt (INTx) mechanism similar to the one used in Legacy systems.
  * MSI - Message Signaled Interrupt (MSI) mechanism that treats messages as interrupts.
  * MSIx - Message Signaled Interrupt (MSI) mechanism with the optional extension (MSIx).
  MSIx is the recommended and default option.
  EOT
  type        = string
}

variable "io_throttle_count" {
  default     = 512
  description = "The maximum number of data or control I/O operations that can be pending for the virtual interface at one time. If this value is exceeded, the additional I/O operations wait in the queue until the number of pending I/O operations decreases and the additional operations can be processed.  Range is 1-1024."
  type        = number
}

variable "lun_queue_depth" {
  default     = 20
  description = "The number of commands that the HBA can send and receive in a single transmission per LUN.  Range is 1-254."
  type        = number
}

variable "max_luns_per_target" {
  default     = 1024
  description = "The maximum number of LUNs that the Fibre Channel driver will export or show. The maximum number of LUNs is usually controlled by the operating system running on the server.  Rnage is 1-1024."
  type        = number
}

variable "name" {
  default     = "vhba_adapter"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "plogi_retries" {
  default     = 8
  description = "The number of times that the system tries to log in to a port after the first failure.  Range is 0-255."
  type        = number
}

variable "plogi_timeout" {
  default     = 20000
  description = "The number of milliseconds that the system waits before it tries to log in again.  Range is 1000-255000."
  type        = number
}

variable "resource_allocation_timeout" {
  default     = 10000
  description = "Resource Allocation Timeout, also referred to as RATOV, is the number of milliseconds to wait before the system assumes that a resource cannot be properly allocated.  Range is 5000-100000."
  type        = number
}

variable "receive_ring_size" {
  default     = 64
  description = "The number of descriptors in each queue.  Range is 64-2048."
  type        = number
}

variable "scsi_io_queue_count" {
  default     = 1
  description = "The number of SCSI I/O queue resources the system should allocate.  Range is 1-245."
  type        = number
}

variable "scsi_io_ring_size" {
  default     = 512
  description = "The number of descriptors in each SCSI I/O queue.  Range is 64-512."
  type        = number
}

variable "transmit_ring_size" {
  default     = 64
  description = "The number of descriptors in each queue.  Range is 64-2048."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
