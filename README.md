You played with Azure all the day and you are in a hurry getting home on time?
Here is how you can delete your resource group (or shut down all your VMs) with only one Powershell command - like you can see in the gif. Just type DeleteResourceGroup, login to your Azure Account and select the Resource Group you want to delete - finished.

More exiting: Type ShutDownAllVMs and all your VMs are stopped and no costs will be produced anymore (of course except of the vhd storage costs, but these are just a few cents).

 

So, how am I doing this?
The whole magic comes with Powershell profiles.

Do you already have one? Check it with:
Test-Path $profile
If it returns True you already have a profile. If it returns False you can create one by using this command:
New-Item -path $profile -type file -force
You can edit your profile at everytime using:
notepad $profile
So these are the lines in my Powershell Profile to use the Shortcuts (= functions) ShutDownAllVMs:
function ShutDownAllVMs{
Invoke-Expression "& 'C:\Users\jule\Scripts\ShutDown-All-VMs-in-All-RGs.ps1' "}
Scripts for deleting a selected Resource Group, stopping all VMs and stopping all VMs in a selected Resource Group are available on GitHub.

I hope your 150€ trial money will now remain a bit longer :)
