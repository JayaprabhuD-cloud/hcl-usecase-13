module "lambda" {
  source              = "./modules/lambda"
  lambda_function_name = var.lambda_function_name
  lambda_role_name     = var.lambda_role_name
  lambda_zip_path      = "${path.module}/lambda.zip"
}

module "apigateway" {
  source               = "./modules/apigateway"
  api_name             = var.api_name
  lambda_invoke_arn    = module.lambda.lambda_invoke_arn
  lambda_function_name = module.lambda.lambda_function_name
}