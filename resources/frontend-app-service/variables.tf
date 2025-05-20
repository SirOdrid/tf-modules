variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "service_plan_id" {
  type = string
}

variable "repo_url" {
  type = string
}

variable "branch" {
  type    = string
  default = "main"
}

variable "backend_url" {
  type = string
}

variable "node_version" {
  type    = string
  default = "18-lts"
}
