#Login to Azure Account
Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionID "<your-subscription-id>"

#All VMs in all Resource groups will be stopped
$rgs = Get-AzureRmResourceGroup
foreach ($rg in $rgs)
{
    $vms = Get-AzureRmResource -ResourceGroupName $rg.ResourceGroupName -ResourceType "Microsoft.Compute/virtualMachines"
    foreach ($vm in $vms)
    {
        Stop-AzureRmVM -Name $vm.Name -ResourceGroupName $rg.ResourceGroupName -Force
    }
}
