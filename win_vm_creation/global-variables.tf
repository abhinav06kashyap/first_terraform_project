variable "resource_name"{
    type = string
    default = "abhinav_new_rg"
    description = "name of resouce group"
}

variable "tag_spec"{
    default = "this is for tag"
    type = string
    description = "This will be used in tags"
}

variable "subnet_address_prefixes"{
    default = ["10.0.1.0/24"]
    type = list(string)
    description = "This is to give a prefix to subnet name"
}


