targetScope = 'subscription'

@description('Name of the resource group to create for this workload')
param resourceGroupName string

@description('The geo-location where the resource lives.')
param location string

@description('Name of Static Web App.')
param name string

@description('Tags to apply to all resources in this workload.')
var tags = {}

// Resource group for this workload
resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location
  tags: tags
}

// Static web app for this workload
module names 'staticWebApp.bicep' = {
  scope: rg
  name: 'staticWebApp'
  params: {
    location: location
    name: name
    tags: tags
  }
}
