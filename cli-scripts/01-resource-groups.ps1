# Azure Secure Web App (Zero Trust) - Step 01: Resource Groups
# Run in Azure Cloud Shell (PowerShell) or locally with Azure CLI installed

$location = "eastus"

# Project prefix (keep consistent across resources)
$prefix = "swa-zt"   # secure web app - zero trust

# Resource Group Names
$rgNetwork    = "rg-$prefix-network"
$rgCompute    = "rg-$prefix-compute"
$rgMonitoring = "rg-$prefix-monitoring"

Write-Host "Creating resource groups in $location ..." -ForegroundColor Cyan

az group create --name $rgNetwork    --location $location
az group create --name $rgCompute    --location $location
az group create --name $rgMonitoring --location $location

Write-Host "Done. Listing created resource groups:" -ForegroundColor Green
az group list --query "[?name=='$rgNetwork' || name=='$rgCompute' || name=='$rgMonitoring'].{Name:name, Location:location}" -o table

