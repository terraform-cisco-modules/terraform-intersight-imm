#____________________________________________________________
#
# Flow Control Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "flow_control"
  description = "Name for the Policy."
  type        = string
}

variable "priority_flow_control_mode" {
  default     = "auto"
  description = "Configure PFC on a per-port basis to enable the no-drop behavior for the CoS as defined by the active network qos policy.\r\n * auto - Enables the no-drop CoS values to be advertised by the DCBXP and negotiated with the peer.  A successful negotiation enables PFC on the no-drop CoS.  Any failures because of a mismatch in the capability of peers causes the PFC not to be enabled.\r\n * on - Enables PFC on the local port regardless of the capability of the peers."
  type        = string
}

variable "receive_direction" {
  default     = "Disabled"
  description = "Link-level Flow Control configured in the receive direction.\r\n * Disabled - Admin configured Disabled State.\r\n * Enabled - Admin configured Enabled State."
  type        = string
}

variable "send_direction" {
  default     = "Disabled"
  description = "Link-level Flow Control configured in the send direction.\r\n * Disabled - Admin configured Disabled State.\r\n * Enabled - Admin configured Enabled State."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
