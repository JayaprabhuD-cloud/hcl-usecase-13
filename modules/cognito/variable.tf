variable "user_pool_name" {}
variable "user_pool_client_name" {}
variable "identity_pool_name" {}
variable "callback_urls" {
  type = list(string)
}
variable "logout_urls" {
  type = list(string)
}

variable "cognito_domain_prefix" {
  description = "Prefix for the Cognito domain (must be globally unique)"
  type        = string
}