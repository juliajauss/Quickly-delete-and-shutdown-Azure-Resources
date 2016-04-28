Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionID "00dd302a-92a9-4ec6-a501-213b1bb1fad1"

#Delete ResourceGroup
$resourceGroup = (Get-AzureRmResourceGroup) | Out-GridView -Title "Select a Resource Group" -PassThru
Remove-AzureRmResourceGroup -Name $resourceGroup.ResourceGroupName
