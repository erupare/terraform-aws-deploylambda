# terraform-aws-deploylambda
Terraform Module demonstrating how to leverage reusable modules to deploy AWS Lambda functions.

For simplicity, this module does not offer all configuration options available when deploying Lambda functions, such as specifying VPC ids and specific IAM roles. For a complete list of options please check the [Terraform Lambda Provider](https://www.terraform.io/docs/providers/aws/r/lambda_function.html)

## Usage

```hcl
module "terraform_aws_deploylambda" {
  source = "github.com/stenio123/terraform-aws-deploylambda"

  s3_bucket_name = "slack-topic"

  file_name = "https://hooks.slack.com/services/AAA/BBB/CCC"
  function_name = "lambda_function_name"
  handler     = "exports.test"
  runtime    = "nodejs8.10"
  environment_vars = {foo = "bar", slackchannel = "notifications"}
}
```

## Example
For a complete step-by-step example, refer to the official [tutorial](https://learn.hashicorp.com/terraform/aws/lambda-api-gateway)