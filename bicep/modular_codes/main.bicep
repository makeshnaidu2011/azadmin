targetScope = 'subscription'

@description('Resource Group Name')
param rgName string

@description('Resource Location')
param location string

@minLength(3)
@maxLength(24)
@description('Storage Account name')
param storageAccountName string

@description('Storage Account Kind')
param kind string

@allowed([
'Standard_LRS'
'Standard_GRS'
'Standard_ZRS'
'Premium_LRS'
])
@description('Storage sku name')
param sku_name string

resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: rgName
  location: location
}

module storageModule './storage/storage.bicep' = {
  name: 'storageDeployment'
  scope: rg
  params: {
  sku_name: sku_name
   kind :kind
    storageAccountName: storageAccountName
    location: location
  }
}
