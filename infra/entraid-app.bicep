targetScope = 'subscription'

extension microsoftGraphV1

param appRegistrationName string = ''

// https://learn.microsoft.com/en-us/graph/templates/quickstart-create-bicep-interactive-mode?tabs=CLI
// https://learn.microsoft.com/en-us/graph/templates/reference/applications?view=graph-bicep-1.0
resource appRegistration 'Microsoft.Graph/applications@v1.0' = {
  displayName: appRegistrationName
  uniqueName: appRegistrationName 
}

output appRegistrationClientId string = appRegistration.appId
