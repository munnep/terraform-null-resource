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

variable "resource_groups3" {
    type = map(object({                     
       resource_group_name = string      
        location = string                
        tags = map(string)         
    }))
    description = "This is just to see if we have a description"
    default = {}
}


variable "resource_groups4" {
  type = object({
    a = string                # a required attribute
    b = optional(string)      # an optional attribute
    c = optional(number, 127) # an optional attribute with default value
  })
    description = "This is just to see if we have a description"
}


variable "buckets" {
  type = list(object({
    name    = string
    enabled = optional(bool, true)
    website = optional(object({
      index_document = optional(string, "index.html")
      error_document = optional(string, "error.html")
      routing_rules  = optional(string)
    }), {})
  }))
}
