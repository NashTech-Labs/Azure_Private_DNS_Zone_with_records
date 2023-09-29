# Private DNS zone with Private Dns record

This Terraform Git repo contains a code that create Private DNS zone with Private Dns record in Azure.

Azure DNS provides a globally distributed and high-availability name server infrastructure that you can use to host your domain. 
Hosting your domains in Azure DNS, you can manage your DNS records with the same credentials, APIs, tools, billing, and support as your other Azure services.


## Prerequisites

Before you can use this Terraform code, you will need to have the following installed:

- [Terraform]
- [Azure CLI]
- azure account with owner permission.


## Usage

To use this Terraform code

Clone this Git repo to your local machine.

Change into the directory containing the code.

```bash
cd Private-DNS-ZONE

```

Create a new file named `terraform.tfvars` in the same directory as your `.tf` files.

```bash
touch terraform.tfvars
```

Open the file in your preferred text editor.

```bash

nano terraform.tfvars
```

Add your desired inputs to the file in the following format:

```ruby
resource_group_name  = ""
location             = ""
pdns_name            = ""
dns_record           = ""
ttl                  = 300
records              = [""]
```
Review the changes that Terraform will make to your Azure resources.


Initialize Terraform in the directory.


terraform init

terraform plan 

terraform apply --auto-approve