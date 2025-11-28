param deploymentName string
param rgName string = 'clc-2025-se2410454016-VK'
param location string

targetScope = 'subscription'

module subscription_module 'subscription_module.bicep' = {
  name: deploymentName
  scope: subscription()
  params: {
    location: location
    rgName: rgName
  }
}
