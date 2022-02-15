# Common variables:

variable "project_name" {
  type    = string
}

variable "api_name" {
  type    = string
}

variable "env" {
  description = "Environment dev/prod"
  type    = string
}

variable "resource_tags" {
  type    = map(string)
}

variable "lambda_api_function_arn" {
  type    = string
}




