# FROM: cflb (github/cflb)
# INFO: OdooServer
# REPOSITORY: https://github.com/cflb/terraform-odoo

# Define DigitalOcean provider
terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        } 
    }
}