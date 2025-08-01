output "step_function_arn" {
  description = "ARN of the ETL pipeline Step Function"
  value       = aws_sfn_state_machine.etl_pipeline.arn
}

output "step_function_name" {
  description = "Name of the ETL pipeline Step Function"
  value       = aws_sfn_state_machine.etl_pipeline.name
}

output "lambda_functions" {
  description = "Map of Lambda function names and ARNs"
  value = {
    param_generator = aws_lambda_function.param_generator.arn
    extractor           = aws_lambda_function.extractor.arn
    loader              = aws_lambda_function.loader.arn
    cache_manager       = aws_lambda_function.cache_manager.arn
  }
}

output "data_bucket_name" {
  description = "Name of the S3 bucket for data storage"
  value       = aws_s3_bucket.data_bucket.id
}
