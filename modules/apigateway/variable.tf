variable "api_name" {
  description = "name of api"
  type = string
  default = "hello-world-api"
}

variable "lambda_invoke_arn" {}
variable "lambda_function_name" {}

variable "user_pool_client_id" {}
variable "user_pool_domain" {}

variable "user_pool_id" {
  description = "The ID of the Cognito User Pool"
  type        = string
}

