resource "google_storage_bucket" "client_feed_1" {
  name          = "${var.env}_dataru_${var.client_feed_1}"
  location      = var.location
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "client_feed_2" {
  name          = "${var.env}_dataru_${var.client_feed_2}"
  location      = var.location
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "client_feed_3" {
  name          = "${var.env}_dataru_${var.client_feed_3}"
  location      = var.location
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "client_feed_4" {
  name          = "${var.env}_dataru_${var.client_feed_4}"
  location      = var.location
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "client_feed_5" {
  name          = "${var.env}_dataru_${var.client_feed_5}"
  location      = var.location
  force_destroy = true

  public_access_prevention = "enforced"
}