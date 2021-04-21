# FROM: cflb (github/cflb)
# INFO: OdooServer
# REPOSITORY: https://github.com/cflb/terraform-odoo

# Define token and ssh key vars
variable "do_token" {}
variable "pvt_key" {}

# provider digitalocean - set token - get $ENV_VARS
provider "digitalocean" {
    token = var.do_token
}

# Get ssh key in digitalocean account
data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}

# Define DigitalOcean provider
terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        } 
    }
}