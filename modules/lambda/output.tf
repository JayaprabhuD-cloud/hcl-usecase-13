output "lambda_function_name" {
  value = aws_lambda_function.hello_world.function_name
}

output "lambda_invoke_arn" {
  value = aws_lambda_function.hello_world.invoke_arn
}