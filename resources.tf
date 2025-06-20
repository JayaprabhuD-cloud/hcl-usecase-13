module "lambda" {
  source              = "./modules/lambda"
  lambda_function_name = var.lambda_function_name
  lambda_role_name     = var.lambda_role_name
  lambda_zip_path      = "${path.module}/lambda.zip"
}

module "apigateway" {
  source               = "./modules/apigateway"
  api_name             = "hello-world-api"
  lambda_invoke_arn    = module.lambda.lambda_invoke_arn
  lambda_function_name = module.lambda.lambda_function_name
  user_pool_client_id  = module.cognito.user_pool_client_id
  user_pool_id         = module.cognito.user_pool_id
  user_pool_domain     = "cognito-idp.ap-south-1.amazonaws.com"
}



module "cognito" {
  source                  = "./modules/cognito"
  user_pool_name          = "hello-world-user-pool"
  user_pool_client_name   = "hello-world-client"
  identity_pool_name      = "hello-world-identity-pool"
  callback_urls           = ["https://example.com/callback"]
  logout_urls             = ["https://example.com/logout"]
  cognito_domain_prefix   = "hello-world-app"
}
