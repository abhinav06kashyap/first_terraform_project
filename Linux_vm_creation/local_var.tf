locals {
  my_local_var = "rg"
  sufix_for_resourse = "ak-dev"
  local_tags = {
    name="my_tag"
    use="only inside this project"
    owner="abhinav"
    from_glob_var= var.tag_spec
     }
}

locals {
  web_nsg_rule = { #web_nsg_rule is your name 
    "110" : "3389", 
    "120" : "80",
    "130" : "443"
  }
}