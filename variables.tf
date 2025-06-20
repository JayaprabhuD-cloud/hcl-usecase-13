variable "lambda_role_name" {
  description = "name of the lambda function role"
  type = string
  default = "usecase13_hello_world_lambda_role"
}

variable "lambda_function_name" {
  description = "name of the lambda function name"
  type = string
  default = "usecase13_hello_world_lambda"
}

variable "api_name" {
  description = "name of api"
  type = string
  default = "hello-world-api"
}

#