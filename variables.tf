# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# AWS_DEFAULT_REGION

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "s3_bucket_name" {
  description = "S3 bucket containing the zipped Lambda function"
}

variable "file_name" {
  description = "File name of zipped Lambda function"
}

variable "function_name" {
  description = "File name of zipped Lambda function"
}
variable "handler" {
  description = "Function entry point"
}

variable "runtime" {
  description = "Runtime to run this Lambda"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# 
# ---------------------------------------------------------------------------------------------------------------------

variable "environment_vars" {
  description = "Environment variables"
  default = {
      foo = "bar"
    }
}
variable "log_retention_in_days" {
    description = "Number of days to keep Cloudwatch logs for this function"
    default = 14
}
