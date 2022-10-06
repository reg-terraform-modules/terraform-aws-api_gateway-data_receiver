# Common variables:
variable "env" {
  description = "Environment dev/prod"
  type    = string
}

variable "project_name" {
  type    = string
}

variable "module_name" {
  description = "Module name, for example <lambda_extract>"
  type    = string
}

variable "api_name" {
  type    = string
}

variable "resource_tags" {
  type    = map(string)
}

variable "api_description" {
  type    = string
  default = "Standard API for data receiver"
}

variable "lambda_api_function_arn" {
  type    = string
}