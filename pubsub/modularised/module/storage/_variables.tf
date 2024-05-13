variable "env" {
  type        = string
  description = "environment you're expecting to deploy to"
  default     = "test"
}

variable "location" {
  type        = string
  description = "GCP location"
  default     = "EU"
}

variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "client_feed_1" {
  type        = string
  description = "Bucket name"
}

variable "client_feed_2" {
  type        = string
  description = "Bucket name"
}

variable "client_feed_3" {
  type        = string
  description = "Bucket name"
}

variable "client_feed_4" {
  type        = string
  description = "Bucket name"
}

variable "client_feed_5" {
  type        = string
  description = "Bucket name"
}