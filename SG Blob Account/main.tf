
resource "azurerm_storage_account" "sunnyag" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  name                     = var.storageAccountName
  location                 = var.location
  resource_group_name      = var.resource_group_name

}
resource "azurerm_storage_container" "sunnycontainer" {
  name                  = "sunnycontainer"
  storage_account_name  = var.storageAccountName
  container_access_type = "private"
}
resource "azurerm_storage_blob" "sunnystorageblob" {
  name                   = "sunnyblob1"
  storage_account_name   = var.storageAccountName
  storage_container_name = "sunnycontainer"
  type                   = "Block"

}
