@description('Specifies the location for resources.')
param name string = 'uniquestoragename1654116'
param location string = 'eastus'

var storageSku = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: name
  location: location
  kind: 'Storage'
  sku: {
    name: storageSku
  }

  properties: {
    allowBlobPublicAccess: false
  }
}

output id string = storageaccount.id
