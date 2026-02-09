resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-rg"
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.name}demosa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}
