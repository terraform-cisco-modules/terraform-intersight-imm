#_________________________________________________________________
#
# Intersight Adapter Configuration Policy
# GUI Location: Policies > Create Policy > Adapter Configuration
#_________________________________________________________________

resource "intersight_adapter_config_policy" "vic_adapter" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  settings {
    object_type = "adapter.AdapterConfig"
    slot_id     = var.pci_slot
    dce_interface_settings = [
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.fec_mode_1
        interface_id          = 0
        object_type           = "adapter.DceInterfaceSettings"
      },
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.fec_mode_2
        interface_id          = 1
        object_type           = "adapter.DceInterfaceSettings"
      },
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.fec_mode_3
        interface_id          = 2
        object_type           = "adapter.DceInterfaceSettings"
      },
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.fec_mode_4
        interface_id          = 3
        object_type           = "adapter.DceInterfaceSettings"
      },
    ]
    eth_settings {
      lldp_enabled = var.enable_lldp
      object_type  = "adapter.EthSettings"
    }
    fc_settings {
      fip_enabled = var.enable_fip
      object_type = "adapter.FcSettings"
    }
    port_channel_settings {
      enabled     = var.enable_port_channel
      object_type = "adapter.PortChannelSettings"
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
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
