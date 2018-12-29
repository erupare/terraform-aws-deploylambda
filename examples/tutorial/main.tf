//--------------------------------------------------------------------
// Variables

variable "tfeworkspace_creator_vcs_identifier" {}
variable "tfeworkspace_hostname" {}
variable "tfeworkspace_master_aws_access_key" {}
variable "tfeworkspace_master_aws_secret_key" {}
variable "tfeworkspace_org" {}
variable "tfeworkspace_sub_account_aws_access_key" {}
variable "tfeworkspace_sub_account_aws_secret_key" {}
variable "tfeworkspace_tfe_oauth_token" {}
variable "tfeworkspace_tfe_user_token" {}
variable "tfeworkspace_use_case_name" {}
variable "tfeworkspace_vcs_identifier" {}

//--------------------------------------------------------------------
// Modules
module "deploylambda" {
  source  = "app.terraform.io/Demo-stenio/deploylambda/aws"
  version = "1"
}

module "tfeworkspace" {
  source  = "app.terraform.io/Demo-stenio/tfeworkspace/aws"
  version = "1"

  creator_vcs_identifier = "${var.tfeworkspace_creator_vcs_identifier}"
  hostname = "${var.tfeworkspace_hostname}"
  master_aws_access_key = "${var.tfeworkspace_master_aws_access_key}"
  master_aws_secret_key = "${var.tfeworkspace_master_aws_secret_key}"
  org = "${var.tfeworkspace_org}"
  sub_account_aws_access_key = "${var.tfeworkspace_sub_account_aws_access_key}"
  sub_account_aws_secret_key = "${var.tfeworkspace_sub_account_aws_secret_key}"
  tfe_oauth_token = "${var.tfeworkspace_tfe_oauth_token}"
  tfe_user_token = "${var.tfeworkspace_tfe_user_token}"
  use_case_name = "${var.tfeworkspace_use_case_name}"
  vcs_identifier = "${var.tfeworkspace_vcs_identifier}"
}