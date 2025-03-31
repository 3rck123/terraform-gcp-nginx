output "instance_ip" {
  description = "Endereço IP público da instância"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}