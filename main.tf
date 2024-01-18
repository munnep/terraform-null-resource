resource "null_resource" "test" {}

variable "variable_string" {
default = "this is the default_value"
description = "This is just to see if we have a description"
}


variable "variable_map" { 
type = map(string)
  default = {
    Name = "example"
  }
description = "This is just to see if we have a description"
}

variable "resource_groups" {
    type = map(object({                     # map to create
       resource_group_name = string         # resource
        location = string                   # location
        tags = map(string)                  # tags
    }))
    description = "This is just to see if we have a description"
}


variable "resource_groups2" {
    type = map(object({                     # map to create
       resource_group_name = string         # resource
        location = string                   # location
        tags = map(string)                  # tags
    }))
    description = "This is just to see if we have a description"
    default = {}
}
