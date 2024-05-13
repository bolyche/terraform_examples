module "default_topics" {
  source     = "../module/pubsub_topics"
  for_each   = toset(var.topics)
  env        = "dev"
  topic_name = each.value
}


module "default_subscriptions" {
  source            = "../module/pubsub_subscriptions"
  for_each          = module.default_topics
  env               = "dev"
  topic_name        = each.value.topic_name
  topic_id          = each.value.topic_id
  bucket_name       = each.value.bucket_name
  subscription_name = "example_2"
}