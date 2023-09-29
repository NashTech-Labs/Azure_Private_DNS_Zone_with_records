variable "resource_group_name" {
    type= string
    default = "endpointrg"
}

variable "location" {
    type= string
    default = "eastus"
}

variable "pdns_name" {
    type= string
    default = "privatedomain.com"
}

variable "dns_record" {
    type= string
    default = "testrecord"
}

variable "ttl" {
    type= number
    default = 300
}

variable "records" {
    type= list(string)
    default = ["10.0.180.17"]
}



