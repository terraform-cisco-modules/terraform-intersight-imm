locals {
  model          = data.intersight_equipment_chassis.chassis.results.0.model
  image_category = length(regexall("B200", local.model)) > 0 ? "B-Series" : "C-Series"
  image_name = length(
    regexall("B200", local.model)
    ) > 0 ? join(
    ".", [join(".", ["ucs-k9-bundle-b-series", replace(replace(var.software_version, "(", "."), ")", "")]), "B.bin"]
    ) : join(
  ".", [join(".", ["ucs-k9-bundle-c-series", replace(replace(var.software_version, "(", "."), ")", "")]), "C.bin"])
  server_object = length(regexall("B200", local.model)) > 0 ? "compute.Blade" : "compute.Blade"
}

data "intersight_equipment_chassis" "chassis" {
  serial = var.serial
}

output "chassis" {
  value = data.intersight_equipment_chassis.chassis
}

data "intersight_firmware_distributable" "image" {
  nr_version     = var.software_version
  image_category = local.image_category
  name           = local.image_name
}


output "intersight_firmware_distributable" {
  value = {
    name   = data.intersight_firmware_distributable.image.results[0].name
    moid   = data.intersight_firmware_distributable.image.results[0].moid
    models = data.intersight_firmware_distributable.image.results[0].supported_models
  }
}


#____________________________________________________________
#
# Intersight Server Firmware Upgrade
# GUI Location: Operate > Server > {Select a Server} > Click Drop Down > Upgrade Firmware
#____________________________________________________________

resource "intersight_firmware_chassis_upgrade" "upgrade" {
  depends_on = [
    data.intersight_equipment_chassis.chassis,
    data.intersight_firmware_distributable.image
  ]
  chassis {
    additional_properties = ""
    class_id              = "mo.MoRef"
    moid                  = data.intersight_equipment_chassis.chassis.results.0.moid
    object_type           = local.server_object
    selector              = ""
  }
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
  exclude_component_list = var.exclude_component_list
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
