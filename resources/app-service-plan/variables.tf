variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tier" {
  type    = string
  default = "B1"
}

variable "size" {
  type    = string
  default = "B1"
}
