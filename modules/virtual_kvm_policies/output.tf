#____________________________________________________________
#
# Collect the moid of the KVM Policy as an Output
#____________________________________________________________

output "moid" {
  description = "KVM Policy Managed Object ID (moid)."
  value       = intersight_kvm_policy.kvm.moid
}
