#____________________________________________________________
#
# Collect the moid of the SSH Policy as an Output
#____________________________________________________________

output "moid" {
  description = "SSH Policy Managed Object ID (moid)."
  value       = intersight_ssh_policy.ssh.moid
}
