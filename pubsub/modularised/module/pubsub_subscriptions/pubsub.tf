resource "google_storage_notification" "this" {
  bucket         = var.bucket_name
  payload_format = "JSON_API_V1"
  topic          = var.topic_id
  event_types    = ["OBJECT_FINALIZE", "OBJECT_METADATA_UPDATE"]
  custom_attributes = {
    new-attribute = "new-attribute-value"
  }
}

resource "google_pubsub_subscription" "subscription" {
  name  = "${var.env}_${var.topic_name}_${var.subscription_name}"
  topic = var.topic_id

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
