provider "google" {
  credentials = "${file("/Users/marc/.config/gcloud/legacy_credentials/richardson.marc@gmail.com/adc.json")}"
  project = "actions-lab-3fa52"
#  project_id = "actions-lab-3fa52"
  region  = "us-east-2"
  zone    = "us-east2-c"
 }
 