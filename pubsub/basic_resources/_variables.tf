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

variable "input_bucket" {
  type        = string
  description = "Bucket name"
}
