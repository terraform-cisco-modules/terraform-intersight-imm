#______________________________________________________________________
#
# Intersight Operating System Install
# GUI Location: Servers > {Select a Server} > Install Operating System
#______________________________________________________________________

resource "intersight_os_install" "install" {
  description    = var.description
  install_method = var.install_method
  name           = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  wait_for_completion = var.wait_for_completion
  dynamic "answers" {
    for_each = var.answers
    content {
      answer_file    = answers.value.answer_file
      class_id       = "os.Answers"
      hostname       = answers.value.hostname
      ip_config_type = answers.value.ip_config_type
      dynamic "ip_configuration" {
        for_each = var.ip_configuration
        content {
          additional_properties = ip_configuration.value.additional_properties
          class_id              = ip_configuration.value.object_type
          object_type           = ip_configuration.value.object_type
        }

      }
      is_root_password_crypted = answers.value.is_root_password_crypted
      nameserver               = answers.value.nameserver
      object_type              = "os.Answers"
      product_key              = var.product_key
      root_password            = var.root_password
      nr_source                = answers.value.answer_source
    }
  }
  dynamic "configuration_file" {
    for_each = var.configuration_file_moid
    content {
      moid        = configuration_file.value
      object_type = "os.ConfigurationFile"
    }
  }
  dynamic "install_target" {
    for_each = var.install_target
    content {
      additional_properties = install_target.value.additional_properties
      object_type           = install_target.value.object_type
    }
  }
  dynamic "image" {
    for_each = var.os_image_moid
    content {
      moid        = image.value
      object_type = "softwarerepository.OperatingSystemFile"
    }
  }
  dynamic "osdu_image" {
    for_each = var.scu_image_moid
    content {
      moid        = osdu_image.value
      object_type = "firmware.ServerConfigurationUtilityDistributable"
    }
  }
  dynamic "server" {
    for_each = var.server
    content {
      moid        = server.value.moid
      object_type = server.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
