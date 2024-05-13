// these are the basic resources we're working with - further examples simply split them out

resource "google_storage_bucket" "incoming_data" {
  name          = "${var.env}_${var.input_bucket}"
  location      = var.location
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_storage_notification" "notification" {
  bucket         = google_storage_bucket.incoming_data.name
  payload_format = "JSON_API_V1"
  topic          = google_pubsub_topic.topic.id
  event_types    = ["OBJECT_FINALIZE", "OBJECT_METADATA_UPDATE"]
  custom_attributes = {
    new-attribute = "new-attribute-value"
  }
  depends_on = [google_pubsub_topic_iam_binding.binding]
}


data "google_storage_project_service_account" "gcs_account" {
}


resource "google_pubsub_topic_iam_binding" "binding" {
  topic   = google_pubsub_topic.topic.id
  role    = "roles/pubsub.publisher"
  members = ["serviceAccount:${data.google_storage_project_service_account.gcs_account.email_address}"]
}

resource "google_pubsub_topic" "topic" {
  name = "default_topic"
}

resource "google_pubsub_subscription" "airflow_subscription" {
  name  = "airflow-subscription"
  topic = google_pubsub_topic.topic.id

  # 20 minutes
  message_retention_duration = "604800s"
  retain_acked_messages      = true

  ack_deadline_seconds = 60

  expiration_policy {
    ttl = "604800s"
  }
  retry_policy {
    minimum_backoff = "10s"
  }

  enable_message_ordering    = true
}
