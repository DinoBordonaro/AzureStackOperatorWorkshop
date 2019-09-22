# ARM Templates Basics

## Demo Files
- You will get some demo ARM template files
- Change to the Folder c:\_DEVELOPMENT\AzureStackOperatorWorkshop\ARM Templates\Basic
- demo1.json > Basic template, hardcoded values
- demo2.json > Basic template, parameters
- demo3.json > Basic template, parameters with default values and allowed values
- demo4.json > Basic template, parameters file
- demo5.json > Basic template, parameters file and variable with Azure function
- demo6.json > Basic template, parameters file and output
- demo11.json > Build-in function "NewGuid()"
- demo12.json > Built-in function "resourceGroup()"
- demo21.json > User-defined function

## demo1.json > Apply with Powershell
- Open Powershell
- Login-AzureRMAccount like in Lab 3-AzurePowershell
- New-AzureRMResourceGroup -name w-rgr-powershell-01 -location local
- New-AzureRMResourceGroupDeployment -ResourceGroupName w-rgr-powershell-01 -TemplateFile .\demo1.json   
- After successful deployment, check the result in the portal
- Change the template by adding a tags section
          ...
          "location": "local",
          "tags": {
              "Workshop": "Azure Stack Operator"
          },
          ...
- Redeploy the template using the same Powershell command
- Check if the tag has been updated
- Deploy a storage account manually to the same resource group using the Azure portal
- Deploy the tempalte again using the complete mode > New-AzureRMResourceGroupDeployment -ResourceGroupName w-rgr-powershell-01 -TemplateFile .\demo1.json -mode Complete
- After successful deployment, check the result in the portal
- Delete the deployed resource afterwards

## demo1.json > Apply with Azure CLI
- Open Powershell
- az login
- az group deployment create --resource-group w-rgr-powershell-01 --template-file .\demo1.json
- After successful deployment, check the result in the portal
- Delete the deployed resource afterwards

## demo2.json and demo3.json
- Deploy demo2.json and demo3.json with Powershell or the Azure CLI
- Parameters are:
    location: local
    nameFromTemplate: YOURSTORAGEACCOUNTNAME
    sku: Standard_LRS
    kind: Storage  
- Check how the parameters are handled
- After successful deployment, check the result in the portal

## demo4.json
- Deploy demo4.json using the parameters file, change the values in the file first (unique Storage Account name)
- New-AzureRMResourceGroupDeployment -ResourceGroupName w-rgr-powershell-01 -TemplateFile .\demo4.json -TemplateParameterFile .\demo4.parameters.prod.json
- After successful deployment, check the result in the portal

## demo5.json
- Deploy demo5.json using the parameters file
- New-AzureRMResourceGroupDeployment -ResourceGroupName w-rgr-powershell-01 -TemplateFile .\demo5.json -TemplateParameterFile .\demo5.parameters.prod.json
- After successful deployment, check the result in the portal (UniqueString function for Storage Account Name)

## demo6.json
- Deploy demo6.json using the parameters file, change the values in the file first (unique Storage Account name)
- New-AzureRMResourceGroupDeployment -ResourceGroupName w-rgr-powershell-01 -TemplateFile .\demo6.json -TemplateParameterFile .\demo6.parameters.prod.json
- After successful deployment, check the result in the portal (Outputs)

## Cleanup
- Delete the deployed resource afterwards