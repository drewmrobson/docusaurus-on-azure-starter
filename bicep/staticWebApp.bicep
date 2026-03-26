@description('The geo-location where the resource lives.')
param location string

@description('Name of Static Web App.')
param name string

@description('Optional. Resource Tags.')
param tags object = {}

resource staticWebApp 'Microsoft.Web/staticSites@2021-01-15' = {
    name: name
    location: location
    tags: tags
    properties: {}
    sku: {
        name: 'Free'
        size: 'Free'
    }
}
