# Define token and ssh key vars
variable "do_token" {}

variable "pvt_key" {
  type        = string
  description = "All list sshkeys"
  default     = "/home/cflb/.ssh/dig_key"
}

variable "pub_key" {
  type        = string
  description = "All list sshkeys"
  default     = "/home/cflb/.ssh/dig_key.pub"
}

# Outputs
output "ip_do_droplet" {
  value = digitalocean_droplet.OdooServer.ipv4_address
}
output "region_droplet" {
  value = digitalocean_droplet.OdooServer.region
}
output "name_droplet" {
  value = digitalocean_droplet.OdooServer.name
}