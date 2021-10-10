#____________________________________________________________
#
# Kubernetes Container Runtime Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "docker_daemon_bridge_ip" {
  description = "Bridge IP (--bip) including Prefix (e.g., 172.17.0.5/24) that Docker will use for the default bridge network (docker0). Containers will connect to this if no other network is configured, not used by kubernetes pods because their network is managed by CNI. However this address space must not collide with other CIDRs on your networks, including the cluster's Service CIDR, Pod Network CIDR and IP Pools."
  default     = ""
  type        = string
}

variable "docker_no_proxy" {
  default     = []
  description = "Used to optionally exclude hosts or ranges from going through the proxy server. Refer to https://docs.docker.com/network/proxy/ for details."
  type        = list(string)
}

variable "name" {
  default     = "container_runtime"
  description = "Name of the concrete policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "proxy_http_hostname" {
  description = "HTTP/HTTPS Proxy server FQDN or IP."
  type        = string
}

variable "proxy_http_password" {
  default     = ""
  description = "The password for the HTTP/HTTPS Proxy, If required."
  sensitive   = true
  type        = string
}

variable "proxy_http_username" {
  default     = ""
  description = "The username for the HTTP/HTTPS Proxy, If required."
  type        = string
}

variable "proxy_http_port" {
  default     = 8080
  description = "The HTTP Proxy port number. The port number of the HTTP/HTTPS proxy must be between 1 and 65535, inclusive."
  type        = number
}

variable "proxy_http_protocol" {
  default     = "http"
  description = <<-EOT
  Protocol to use for the HTTP/HTTPS Proxy.
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
  description = "The password for the HTTP/HTTPS Proxy, If required."
  sensitive   = true
  type        = string
}

variable "proxy_https_username" {
  default     = ""
  description = "The username for the HTTP/HTTPS Proxy, If Required."
  type        = string
}

variable "proxy_https_port" {
  default     = 8443
  description = "The HTTPS Proxy port number. The port number of the HTTP/HTTPS proxy must be between 1 and 65535, inclusive."
  type        = number
}

variable "proxy_https_protocol" {
  default     = "https"
  description = <<-EOT
  Protocol to use for the HTTP/HTTPS Proxy.
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
