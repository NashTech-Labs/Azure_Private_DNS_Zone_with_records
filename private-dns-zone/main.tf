terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_private_dns_zone" "pdns" {
  name                = var.pdns_name
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_private_dns_a_record" "dnsrecord" {
  name                = var.dns_record
  zone_name           = azurerm_private_dns_zone.pdns.name
  resource_group_name = azurerm_resource_group.rg.name
  ttl                 = var.ttl
  records             = var.records
}