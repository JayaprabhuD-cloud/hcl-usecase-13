module "lambda" {
  source              = "./modules/lambda"
  lambda_function_name = "hello_world_lambda"
  lambda_role_name     = "lambda_exec_role"
  lambda_handler       = "hello_world.lambda_handler"
  lambda_runtime       = "python3.9"
  lambda_zip_path      = "${path.module}/lambda.zip"
}

module "apigateway" {
  source               = "./modules/apigateway"
  api_name             = "hello-world-api"
  lambda_invoke_arn    = module.lambda.lambda_invoke_arn
  lambda_function_name = module.lambda.lambda_function_name
}