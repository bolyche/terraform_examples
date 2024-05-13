resource "google_pubsub_topic" "topic" {
  name = "${var.env}_${var.topic_name}"
}