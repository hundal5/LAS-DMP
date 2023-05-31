$test_rg = az group create --location eastus2 --name testregroup
$test_sa = az storage account create --name testsgfordevopstra --resource-group testrggroup --https-only "true" 
$test_sas = az storage account show --name testsadmptest1 --resource-group testresoursegroupdmp