variable "domain_name" {
  type    = string
  default = "{{cookiecutter.domain_name}}"
}

variable "project_name" {
  type    = string
  default = "{{cookiecutter.project_name|replace(" ", "_")|replace("-", "_")}}"
}

variable "account" {
  type    = string
  default = "{{cookiecutter.aws_account_id}}"
}

variable "region" {
  type    = string
  default = "{{cookiecutter.aws_region}}"
}