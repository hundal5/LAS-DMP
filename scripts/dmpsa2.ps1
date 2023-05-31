$test_rg = az group create --location eastus2 --name testregroupsmp3 | ConvertFrom-Json
$test_sa = az storage account create --name testdsdfds --resource-group $test_rg.name | ConvertFrom-Json


#to delete a resource group
#az group delete --name $test_rg.name

#why we are using | ConvertFrom-Json
#how to use variables