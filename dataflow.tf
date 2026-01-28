resource "google_dataflow_job" "job" {
  name              = "example-dataflow-job"
  template_gcs_path = "gs://dataflow-templates/latest/Word_Count"
  temp_gcs_location = "${google_storage_bucket.data_bucket.url}/temp"

  parameters = {
    inputFile  = "gs://dataflow-samples/shakespeare/kinglear.txt"
    output     = "${google_storage_bucket.data_bucket.url}/output"
  }
}
