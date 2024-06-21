##############################
## OCI Provider - Variables ##
##############################

# OCI Authentication Variables

variable "oci_tenancy" {
  type        = string
  description = "OCI tenancy identifier"
  default     ="ocid1.tenancy.oc1..aaaaaaaawquag7eeulmm6e2yoykcvigene6piosc6rwgglznmt4d5iubifuq"
}

variable "oci_user" {
  type        = string
  description = "OCI user identifier"
  default     ="ocid1.user.oc1..aaaaaaaakrlp2rwn3ouh45vplzlsqphkjo25i7dbodhl4wctcrzyt7sh4cta"
}

variable "oci_fingerprint" {
  type        = string
  description = "OCI fingerprint for the key pair"
  default     = "66:df:ee:f4:c3:fe:84:90:ac:d6:50:65:ca:2e:d6:57"
}

variable "oci_key" {
  type        = string
  description = "OCI key pair"
  default     = "~/.ssh/oci-console-private.pem"
}

variable "oci_region" {
  type        = string
  description = "OCI region"
  default     = "mx-queretaro-1"
}

variable "compartment_ocid" {
  type        = string
  description = "OCI root compartment"
  default     = "ocid1.compartment.oc1..aaaaaaaawplfybzszx4gaaupjcy3ftfpebgh7bumrkzsglchoandq3gtckya"
}
#################################
## Create VM Image - Variables ##
#################################

variable "availability_domains" {
  description = "Availability Domains"
  type        = list(any)
  default     =["ERDj:MX-QUERETARO-1-AD-1"]
}


#################################
## Create VM Image - Variables ##
#################################

variable "instance_shape" {
  description = "Instance size"
  type        = string
  default     = "VM.Standard.E4.Flex"
}

variable "instance_shape_cpu" {
  description = "Instance vCPUs"
  type        = string
  default     = "1"
}

variable "instance_shape_mem" {
  description = "Instance Memory in GB"
  type        = string
  default     = "2"
}
#############################
## Instance - Variables    ##
#############################

# application name 
variable "instance_name" {
  type        = string
  description = "This variable defines the application name used to build resources"
  default     = "windows"
}

# application or company environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
  default     = "prod"
}
#########################
## Network - Variables ##
#########################

# VCN Subnet CIDR
variable "vcn_cidr_block" {
  type        = list(string)
  description = "Virtual Cloud Network CIDR Block"
  default     = ["11.0.0.0/16"]
}

# Public Subnet CIDR
variable "public_subnet_cidr_block" {
  type        = string
  description = "Public Subnet CIDR Block"
  default     = "11.0.1.0/24"
}

# Enable ipv6
variable "enable_ipv6" {
  type        = bool
  description = "Enable ipV6"
  default     = false
}

# DNS Domain Name
variable "dns_domain_name" {
  type        = string
  description = "DNS Domain Name"
  default     = "cloud.local"
}


