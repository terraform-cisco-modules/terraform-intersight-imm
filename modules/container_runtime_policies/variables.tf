#____________________________________________________________
#
# Kubernetes Container Runtime Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "docker_bridge_cidr" {
  description = "The CIDR for docker bridge network. This address space must not collide with other CIDRs on your networks, including the cluster's service CIDR, pod CIDR and IP Pools."
  default     = ""
  type        = string
}

variable "docker_no_proxy" {
  default     = []
  description = "Docker no proxy list, when using internet proxy."
  type        = list(string)
}

variable "name" {
  default     = "k8s_runtime"
  description = "Name of the concrete policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "proxy_http_hostname" {
  description = "Hostname of the HTTP Proxy Server."
  type        = string
}

variable "proxy_http_password" {
  default     = ""
  description = "Password for the HTTP Proxy Server, If required."
  sensitive   = true
  type        = string
}

variable "proxy_http_username" {
  default     = ""
  description = "The username for the HTTP Proxy."
  type        = string
}

variable "proxy_http_port" {
  default     = 8080
  description = "HTTP Proxy Port.  Range is 1-65535."
  type        = number
}

variable "proxy_http_protocol" {
  default     = "http"
  description = <<-EOT
  HTTP Proxy Protocol. Options are:
  * http
  * https
  EOT
  type        = string
}

variable "proxy_https_hostname" {
  description = "HTTPS Proxy server FQDN or IP."
  type        = string
}

variable "proxy_https_password" {
  default     = ""
  description = "Password for the HTTPS Proxy Server, If required."
  sensitive   = true
  type        = string
}

variable "proxy_https_username" {
  default     = ""
  description = "Username for the HTTPS Proxy Server."
  type        = string
}

variable "proxy_https_port" {
  default     = 8443
  description = "HTTPS Proxy Port.  Range is 1-65535."
  type        = number
}

variable "proxy_https_protocol" {
  default     = "https"
  description = <<-EOT
  HTTPS Proxy Protocol. Options are:
  * http
  * https
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}
