resource "azurerm_storage_account" "sunnySA" {
  for_each                 = var.azurerm_storage_account
  name                     = each.key
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  tags = {
    environment = "staging"
  }
}
