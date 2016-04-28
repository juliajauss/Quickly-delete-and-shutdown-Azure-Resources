#Login to Azure Account
Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionID "00dd302a-92a9-4ec6-a501-213b1bb1fad1"

#Input your Resource Group - all VMs in this group will be stopped
$resourceGroupName = (Get-AzureRmResourceGroup).ResourceGroupName | Out-GridView -Title "Select a Resource Group" -PassThru

$vms = Get-AzureRmResource -ResourceGroupName $resourceGroupName -ResourceType "Microsoft.Compute/virtualMachines"

foreach ($vm in $vms)
{
    Stop-AzureRmVM -Name $vm.Name -ResourceGroupName $resourceGroupName
}