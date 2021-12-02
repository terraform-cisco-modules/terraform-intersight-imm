#____________________________________________________________
#
# Example Intersight Virtual Media Policy Module
# GUI Location: Policies > Create Policy > Virtual Media
#____________________________________________________________

module "vmedia_example_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/virtual_media_policies"
  description   = "Virtual Media Policy Example."
  enabled       = true
  encryption    = false
  low_power_usb = false
  name          = "example_1"
  org_moid      = local.org_moid
  profiles      = []
  tags          = var.tags
  mappings = [
    {
      additional_properties   = ""
      authentication_protocol = "none"
      device_type             = "cdd"
      file_location           = "web.example.com/VMware_ESXi_6.7.0_14320388_Custom_Cisco_6.7.3.1.iso"
      host_name               = "web.example.com"
      is_password_set         = false
      mount_options           = "RO"
      mount_protocol          = "http"
      password                = ""
      remote_file             = "VMware_ESXi_6.7.0_14320388_Custom_Cisco_6.7.3.1.iso"
      remote_path             = "/"
      sanitized_file_location = "web.example.com/VMware_ESXi_6.7.0_14320388_Custom_Cisco_6.7.3.1.iso"
      username                = ""
      volume_name             = "IMC_DVD"
    }
  ]
}

module "vmedia_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/virtual_media_policies"
  description   = "Virtual Media Policy Example 2."
  enabled       = true
  encryption    = false
  low_power_usb = true
  mappings      = []
  name          = "example_2"
  org_moid      = local.org_moid
  profiles      = []
  tags          = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vmedia_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/virtual_media_policies"
  description   = ""
  enabled       = true
  encryption    = false
  low_power_usb = false
  mappings      = []
  name          = "vmedia"
  org_moid      = local.org_moid
  profiles      = []
  tags          = var.tags
}

*/
