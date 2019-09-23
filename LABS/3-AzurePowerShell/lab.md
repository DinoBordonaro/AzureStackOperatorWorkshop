# Azure Powershell

## Login and select Subscription
- Open a Powershell window with Admin Permissions
- Login-AzureRMAccount 
- Get-AzureRMSubscriptions
- Select-AzureRmSubscription -SubscriptionName "AzS PoC Subscription" 

## Get Data
- Get-AzureRMSubscription
- Get-AzureRMResourceGroup
- Get-AzureRMResource
- Get-AzureRMResourceProvider
- Get-AzureRMResourceProviderAction

## Create a Resource Group
- New-AzureRMResourceGroup -?
- New-AzureRMResourceGroup -name w-rgr-powershell-01 -location local

## Create a Storage Account
- New-AzureRMureRMStorageAccount `
    -ResourceGroupName w-rgr-powershell-01 `
    -Name wstopowershell99 `
    -SkuName Standard_LRS `
    -Kind StorageV2 `
    -Location local
- Check the result in the Azure portal

## Update Storage Account
- Set-AzureRMureRMStorageAccount `
    -ResourceGroupName w-rgr-powershell-01 `
    -Name wstopowershell99 `
    -Tag @{"Owner" = "Powershell"}        
- Check the result in the Azure portal

## Apply Lock to Storage Account
- $sa = Get-AzureRMStorageAccount `
    -ResourceGroupName w-rgr-powershell-01 `
    -Name wstopowershell99
- $sa | New-AzureRMResourceLock -LockName ReadOnly -LockLevel ReadOnly
- Check the result in the Azure portal

## Freestyle
- Test some more things using Azure Powershell yourself
- Type "get-command -Name *AzureRM*" to see all posible commands

## Cleanup
- Go to the portal and delete everything you created in this lab