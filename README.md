# Deploy an Oracle Cloud (OCI) Virtual Machine in Windows Server 2019 without password
[![Terraform](https://img.shields.io/badge/terraform-v1.3+-blue.svg)](https://www.terraform.io/downloads.html)

The Terraform code in this repo will deploy an Oracle Cloud (OCI) Virtual Machine with Windows Server 2019 without password.

## Network Configuration

The code will create the network resources (VCN, Subnet, Internet Gateway, Routes).

## Notes
- The default Windows username is **opc**, and you can get the password from the Terraform output.
```
admin_password (proposed) = "B21AqTpHlai[5"
admin_user = "opc"
public_ip = "xxx.xxx.xxx.xxx"
```