param hiddenParam string

param location string = 'swedencentral'

module storageAccount 'storageAccountModule.bicep' = {
  name: 'StorageAccountModule'
  params: {
    location: location
    storageAccountName: hiddenParam
  }
}


module appServicePlan 'appServicePlanModule.bicep' = {
  name: 'AppServicePlanModule'
  params: {
    planName: 'az1appplan'
    location: location
  }
}

module webApp 'webAppModule.bicep' = {
  name: 'WebAppModule'
  params: {
    appServicePlanId: appServicePlan.outputs.id
    location: location
    storageAccountName: storageAccount.outputs.name
    storageConnectionString: storageAccount.outputs.storageConnectionString
    webAppName: 'az1webapp'
  }
}

