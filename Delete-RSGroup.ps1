Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionID "00dd302a-92a9-4ec6-a501-213b1bb1fad1"

#Delete ResourceGroup
$resourceGroup = (Get-AzureRmResourceGroup) | Out-GridView -Title "Select a Resource Group" -PassThru
Remove-AzureRmResourceGroup -Name $resourceG"& 'C:\Users\juliajau\OD\Work\ISV TEAM\Skripte\Delete-RSGroup.ps1' "roup.ResourceGroupName
