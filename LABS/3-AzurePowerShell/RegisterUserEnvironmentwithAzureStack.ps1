# Register an Azure Resource Manager environment that targets your Azure Stack instance. Get your Azure Resource Manager endpoint value from your service provider.
Add-AzureRMEnvironment -Name "AzureStack" -ArmEndpoint "https://management.local.azurestack.external"

# Set your tenant name
$AuthEndpoint = (Get-AzureRmEnvironment -Name "AzureStack").ActiveDirectoryAuthority.TrimEnd('/')
$AADTenantName = "TENANT.onmicrosoft.com"
$TenantId = (invoke-restmethod "$($AuthEndpoint)/$($AADTenantName)/.well-known/openid-configuration").issuer.TrimEnd('/').Split('/')[-1]

# After signing in to your environment, Azure Stack cmdlets
# can be easily targeted at your Azure Stack instance.
Add-AzureRmAccount -EnvironmentName "AzureStack" -TenantId $TenantId