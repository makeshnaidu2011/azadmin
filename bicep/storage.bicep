targetScope = 'resourceGroup'
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'storageaccountmakesh'
  location: 'norwayeast'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
