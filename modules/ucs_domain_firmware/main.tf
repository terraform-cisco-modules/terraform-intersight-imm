locals {
  model = data.intersight_network_element_summary.fi_a.results.0.model
  image_name = length(
    regexall("(64108|6454)", local.model)
    ) > 0 ? join(".", [join(".", ["ucs-6400-k9-bundle-infra", replace(replace(var.software_version, "(", "."), ")", "")]), "A.bin"]) : length(
    regexall("(UCS-FI-6332)", local.model)
  ) > 0 ? join(".", [join(".", ["ucs-6300-k9-bundle-infra", replace(replace(var.software_version, "(", "."), ")", "")]), "A.bin"]) : ""
}

data "intersight_network_element_summary" "fi_a" {
  serial = var.serial_a
}

data "intersight_network_element_summary" "fi_b" {
  serial = var.serial_b
}

data "intersight_firmware_distributable" "image" {
  nr_version     = var.software_version
  image_category = "Infrastructure"
  name           = local.image_name
}

#____________________________________________________________
#
# Intersight Infrastructure Firmware Upgrade
# GUI Location: Operate > Fabric Interconnects > {Select an FI} > Click Drop Down > Upgrade Firmware
#____________________________________________________________

resource "intersight_firmware_switch_upgrade" "upgrade" {
  depends_on = [
    data.intersight_firmware_distributable.image,
    data.intersight_network_element_summary.fi_a,
    data.intersight_network_element_summary.fi_b
  ]
  direct_download {
    http_server {
      location_link = var.http_image_url
      mount_options = var.http_mount_options
      object_type   = "firmware.HttpServer"
    }
    object_type   = "firmware.DirectDownload"
    image_source  = var.image_source
    password      = var.auth_password_direct
    upgradeoption = var.upgradeoption_direct
    username      = var.auth_username_direct
  }
  distributable {
    moid = data.intersight_firmware_distributable.image.results[0].moid
  }
  enable_fabric_evacuation = var.enable_fabric_evacuation
  network_elements = [
    {
      additional_properties = ""
      class_id              = "network.Element"
      moid                  = data.intersight_network_element_summary.fi_a.results.0.moid
      object_type           = "network.Element"
      selector              = ""
    },
    {
      additional_properties = ""
      class_id              = "network.Element"
      moid                  = data.intersight_network_element_summary.fi_b.results.0.moid
      object_type           = "network.Element"
      selector              = ""
    }
  ]
  network_share {
    cifs_server {
      file_location = var.cifs_file_location
      mount_options = var.cifs_mount_options
      object_type   = "firmware.CifsServer"
    }
    http_server {
      location_link = var.http_image_url
      mount_options = var.http_mount_options
      object_type   = "firmware.HttpServer"
    }
    nfs_server {
      file_location = var.nfs_file_location
      mount_options = var.nfs_mount_options
      object_type   = "firmware.NfsServer"
    }
    map_type      = var.map_type
    object_type   = "firmware.NetworkShare"
    password      = var.auth_password_filesrv
    upgradeoption = var.upgradeoption_filesrv
    username      = var.auth_username_filesrv
  }
  skip_estimate_impact = var.skip_estimate_impact
  upgrade_type         = var.upgrade_type
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
  # file_server = var.file_server
  # release {
  #   moid = var.release
  # }
  #
}
