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
  default = ""
}

variable "file_name" {
  description = "File name of zipped Lambda function"
  default = ""
}

variable "function_name" {
  description = "File name of zipped Lambda function"
  default = ""
}
variable "handler" {
  description = "Function entry point"
  default = ""
}

variable "runtime" {
  description = "Runtime to run this Lambda"
  default = ""
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# 
# ---------------------------------------------------------------------------------------------------------------------

variable "environment_vars" {
  description = "Environment variables"
  default = {}
}
variable "log_retention_in_days" {
    description = "Number of days to keep Cloudwatch logs for this function"
    default = 14
}
