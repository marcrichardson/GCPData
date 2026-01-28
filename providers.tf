terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}


#variable "project_id" {
#  type = string
#}

variable "region" {
  type    = string
  default = "us-east2"
}
