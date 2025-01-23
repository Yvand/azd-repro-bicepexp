targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the environment that can be used as part of naming resource convention')
param environmentName string

@minLength(1)
@description('Primary location for all resources')
param location string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: environmentName
  location: location
}

module entraAppRegistration 'entraid-app.bicep' = {
  name: 'entraAppRegistration'
  params: {
    appRegistrationName: environmentName
  }
}
