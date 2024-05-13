variable "env" {
  type        = string
  description = "environment you're expecting to deploy to"
  default     = "test"
}

variable "topic_name" {
  type        = string
  description = "Pubsub Topic Name"
}
