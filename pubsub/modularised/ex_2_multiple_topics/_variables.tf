variable "topics" {
  type    = list(string)
  default = ["topic_a", "topic_b", "topic_c"]
}

variable "project" {
  description = "Map of project names to configuration."
  type        = map(any)

  default = {
    first_subscription = {
      bucket_name        = "bucket_a"
      env               = "dev"
      subscription_name = "tree"
    },
    second_subscription = {
      bucket_name        = "bucket_b"
      env               = "test"
      subscription_name = "field"
    },
    third_subscription = {
      bucket_name        = "bucket_c"
      env               = "test"
      subscription_name = "bush"
    }
  }
}