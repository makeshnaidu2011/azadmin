targetScope = 'resourceGroup'

@description('Storage Account Name')
param storageAccountName string

@description('Azure Region')
param location string = resourceGroup().location

@description('Storage Account Kind')
param kind string = 'StorageV2'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  kind: kind
  sku: {
    name: 'Standard_LRS'
  }
}
