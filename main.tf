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
