Builds azure test lab if run with:
```
pwsh
 import-module az 
 Connect-AzAccount
 Enable-AzureRmAlias
 
New-AzResourceGroup -Name testRG -Location westeurope
New-AzResourceGroupDeployment -ResourceGroupName "testRG" -TemplateUri https://raw.githubusercontent.com/unixhead/AzureTestlab2Spoke/main/2-spoke-testlab-network.json
New-AzResourceGroupDeployment -ResourceGroupName "testRG" -password "<PASSWORDHERE>" -adminip "<MY-IP-Address>" -TemplateUri https://raw.githubusercontent.com/unixhead/AzureTestlab2Spoke/main/2-spoke-testlab-VMs.json
```

Builds this (minus load balancer):

![testnet](https://github.com/unixhead/AzureTestlab2Spoke/raw/main/testnet1.png)
