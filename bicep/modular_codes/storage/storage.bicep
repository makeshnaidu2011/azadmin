targetScope = 'resourceGroup'

param storageAccountName string
param location string
@description('Storage Account Kind')
param kind string 
param sku_name string

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location
  kind: kind
  sku: {
    name: sku_name
  }
}
