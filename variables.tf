# https://intersight.com/an/settings/api-keys/
## Generate API key to obtain the API Key and PEM file

variable "apikey" {
  description = "API Key for Terraform Demo Account"
  type        = string
  default     = "59af0e11f11aa10001678016/59af0ceef11aa100016748f0/5fad6f147564612d3348b2cb"
}

variable "secretkey" {
  description = "Filename (PEM) that provides secret key for Terraform Demo Account"
  sensitive   = true
  type        = string
}

variable "endpoint" {
  description = "Intersight API endpoint"
  type        = string
  default     = "https://intersight.com"
}

variable "organization" {
  type = string
}

variable "mac_pool_moid" {
  type = string
}

variable "ip_pool_moid" {
  type = string
}

