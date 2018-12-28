module "deploylambda" {
  source  = "app.terraform.io/Demo-stenio/deploylambda/aws"
  version = "1"

  file_name = "v1.0.0/example.zip"
  function_name = "ServerlessExample"
  handler = "main.handler"
  log_retention_in_days = 14
  runtime = "nodejs6.10"
  s3_bucket_name = "terraform-serverless-example"
}