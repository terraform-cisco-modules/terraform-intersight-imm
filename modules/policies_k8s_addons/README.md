# policies_k8s_addons - Intersight Kubernetes Addon Policy Terraform Module

## Usage

```hcl
module "k8s_addons" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_k8s_addons"

  # omitted...
}
```

This module will create a Kubernetes Addon Policy in Intersight.  This can be used to Addons to Kubernetes Clusters that require Addons.  

These resources are consumed

* [k8s_addons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_addon_policy)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [intersight_kubernetes_addon_policy.addon](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_addon_policy) | resource |
| [intersight_kubernetes_addon_definition.addon](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/kubernetes_addon_definition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addon"></a> [addon](#input\_addon) | The Addon to add to this Policy.  Options are:<br> * ccp-monitor<br> * kubernetes-dashboard. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_install_strategy"></a> [install\_strategy](#input\_install\_strategy) | Addon install strategy to determine whether an addon is installed if not present.<br> * None - Unspecified install strategy.<br> * NoAction - No install action performed.<br> * InstallOnly - Only install in green field. No action in case of failure or removal.<br> * Always - Attempt install if chart is not already installed. | `string` | `"Always"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_addon"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | Name for the helm release. | `string` | `""` | no |
| <a name="input_release_namespace"></a> [release\_namespace](#input\_release\_namespace) | Namespace for the helm release. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_upgrade_strategy"></a> [upgrade\_strategy](#input\_upgrade\_strategy) | Addon upgrade strategy to determine whether an addon configuration is overwritten on upgrade.<br> * None - Unspecified upgrade strategy.<br> * NoAction - This choice enables No upgrades to be performed.<br> * UpgradeOnly - Attempt upgrade if chart or overrides options change, no action on upgrade failure.<br> * ReinstallOnFailure - Attempt upgrade first. Remove and install on upgrade failure.<br> * AlwaysReinstall - Always remove older release and reinstall. | `string` | `"UpgradeOnly"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Addon Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->