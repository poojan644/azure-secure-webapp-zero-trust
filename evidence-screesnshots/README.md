# Evidence Screenshots

This folder contains proof of deployment and validation.

Planned evidence:
- Resource groups created
- VNet + subnets + NSGs created
- Application Gateway WAF deployed
- Backend reachable via WAF (HTTP 200)
- Log Analytics workspace created
- Diagnostic settings enabled (App Gateway logs flowing)
- Sample KQL query results

### Zero Trust Subnet Security (Validated via Azure CLI)

Each subnet is explicitly associated with a dedicated Network Security Group (NSG).
This enforces Zero Trust networking by preventing implicit east–west traffic.

Verification was performed using Azure CLI:

```bash
az network vnet subnet show \
  -g rg-swa-zt-network \
  --vnet-name vnet-swa-zt-core \
  -n subnet-app \
  --query "networkSecurityGroup.id" -o tsv

Next we will implement:

### **Step 04: Private Endpoints + Private DNS**
This will show:
- No public access
- Secure PaaS access
- Enterprise Zero Trust networking
