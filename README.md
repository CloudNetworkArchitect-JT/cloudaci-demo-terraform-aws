[![published](https://static.production.devnetcloud.com/codeexchange/assets/images/devnet-published.svg)](https://developer.cisco.com/codeexchange/github/repo/marinalf/cloudaci-demo-terraform-aws)

## Use Case: Single Region/Tenant/VRF

This project shows how Cloud ACI works on public clouds such as AWS, how it normalizes and translates the ACI policy model into public cloud native constructs, and how Terraform can be leveraged to automate Cloud ACI operations.

**High Level Diagram**

<img width="600" alt="aws" src="https://github.com/marinalf/cloudaci-demo-terraform-aws/blob/main/images/hld.png">

The code builds a VPC on a single region (same region as the infra VPC where cAPIC is deployed) with TGWs, creates two EPGs (Web & DB) which translates to 2 Security Groups, and enable Web access to/from Internet using contracts.

**End State on Cloud ACI**

<img width="600" alt="aws" src="https://github.com/marinalf/cloudaci-demo-terraform-aws/blob/main/images/myapp.png">

**Pre-requisites**

Cloud ACI running in AWS on a dedicated account/infra VPC. The Cloud APIC credentials and AWS account to be used for the user Tenant/VPC are defined in a variable file.

**Providers**

| Name      | Version |
| --------- | ------- |
| [aci](https://registry.terraform.io/providers/CiscoDevNet/aci/latest)|  >=0.71   |

**Installation**

1. Install and setup your [terraform] (https://www.terraform.io/downloads.html) environment
2. Simply copy the 2 files (main.tf and versions.tf) onto your Terraform runtime environment
3. Create your variable.tf file with your Cloud ACI credentials and AWS account

**Usage**

Execute with usual terraform init, terraform plan and terraform apply

**Web to DB communication**

<img width="600" alt="web-to-db" src="https://github.com/marinalf/cloudaci-demo-terraform-aws/blob/main/images/web-to-db.png">

**Web to Internet communication**

<img width="600" alt="web-to-internet" src="https://github.com/marinalf/cloudaci-demo-terraform-aws/blob/main/images/web-to-internet.png">
