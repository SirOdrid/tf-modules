variable "name" {
  type    = string
  default = "AllowAzureServices"
}

variable "server_id" {
  type = string
}

variable "start_ip_address" {
  type    = string
  default = "0.0.0.0"
}

variable "end_ip_address" {
  type    = string
  default = "0.0.0.0"
}