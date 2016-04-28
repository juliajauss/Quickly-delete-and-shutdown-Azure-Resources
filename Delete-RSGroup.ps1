Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionID "<your-subscription-id>"

#Delete ResourceGroup
$resourceGroup = (Get-AzureRmResourceGroup) | Out-GridView -Title "Select a Resource Group" -PassThru
Remove-AzureRmResourceGroup -Name $resourceGroup.ResourceGroupName
