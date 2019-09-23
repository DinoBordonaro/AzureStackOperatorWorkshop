# Azure CLI

## Login and select Subscription
- Open a Powershell window with Admin Permissions
- az cloud list
- az cloud set --name AzureStackUser
- az login
- az cloud update --profile 2019-03-01-hybrid
- az account list
- az account set --subscription "AzS PoC Subscription"

## Get Data
- az
- az group
- az group list
- az provider list

## Create a Resource Group
- az group create
- az group create --name w-rgr-azurecli-01 --location local

## Freestyle
- Test some more things using the Azure CLI yourself

## Cleanup
- Go to the portal and delete everything you created in this lab