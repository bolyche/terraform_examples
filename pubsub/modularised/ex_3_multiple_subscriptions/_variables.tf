variable "project" {
  description = "Map of project names to configuration."
  type        = map(any)

  default = {
    first_subscription = {
      bucket_name        = "test_example_1"
      env               = "dev"
      subscription_name = "tree"
    },
    second_subscription = {
      bucket_name        = "test_example_1"
      env               = "test"
      subscription_name = "field"
    },
    third_subscription = {
      bucket_name        = "test_example_1"
      env               = "test"
      subscription_name = "bush"
    }
  }
}