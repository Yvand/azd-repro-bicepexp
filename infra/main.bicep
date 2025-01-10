targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the environment that can be used as part of naming resource convention')
param environmentName string

@minLength(1)
@description('Primary location for all resources')
param location string

module entraAppRegistration 'entraid-app.bicep' = {
  name: 'entraAppRegistration'
  params: {
    appRegistrationName: environmentName
  }
}
