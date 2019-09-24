$filecontent = Get-Content ".\customrole.txt"
 
$RoleJSON = '
{
  "Name": "Helpdesk",
  "Id": null,
  "IsCustom": true,
  "Description": "Can do Helpdesk day to day work a Subscription on Azure Stack",
  "Actions": [
    ' + $filecontent + '
  ],
  "NotActions": [
  ],
  "AssignableScopes": [
    "/subscriptions/xxxx-xxxxx-xxxxxx-xxxxxx-xxxxx-xxxxxx"
  ]
}'

Set-Content -Path .\roleexport.json -Value $RoleJSON

New-AzureRmRoleDefinition -InputFile .\roleexport.json
