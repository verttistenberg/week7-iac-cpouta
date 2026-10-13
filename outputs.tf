output "floating_ip" {
  description = "Public (floating) IP address of the web server."
  value       = openstack_networking_floatingip_v2.web.address
}

output "url" {
  description = "URL of the web page."
  value       = "http://${openstack_networking_floatingip_v2.web.address}"
}

output "ssh_command" {
  description = "Command for checking the VM over SSH."
  value       = "ssh -i ~/.ssh/week7_ed25519 ubuntu@${openstack_networking_floatingip_v2.web.address}"
}