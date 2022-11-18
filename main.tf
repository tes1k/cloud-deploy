locals {
  services = [
    "sourcerepo.googleapis.com",
    "cloudbuild.googleapis.com",
    "run.googleapis.com",
    "iam.googleapis.com",
  ]
}
resource "google_clouddeploy_delivery_pipeline" "primary" {
  location = "northamerica-northeast1"
  name     = "pipeline"

  annotations = {
    my_first_annotation = "my-annotation-1"

    my_second_annotation = "my-annotation-2"
  }

  description = "basic description"

  labels = {
    my_first_label = "my-label-1"

    my_second_label = "my-label-2"
  }

  project = "test-project-2022-368715"

  serial_pipeline {
    stages {
      profiles  = ["my-profile-one", "my-profile-two"]
      target_id = "my-target-one"
    }

    stages {
      profiles  = []
      target_id = "my-target-two"
    }
  }
}
