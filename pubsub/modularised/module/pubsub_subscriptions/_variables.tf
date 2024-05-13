variable "env" {
  type        = string
  description = "environment you're expecting to deploy to"
  default     = "test"
}

variable "bucket_name" {
  type        = string
  description = "Bucket name"
}

variable "topic_name" {
  type        = string
  description = "Pubsub Topic Name"
}

variable "topic_id" {
  type        = string
  description = "Pubsub Topic ID"
}

variable "subscription_name" {
  type = string
  description = "Subscription name"
}