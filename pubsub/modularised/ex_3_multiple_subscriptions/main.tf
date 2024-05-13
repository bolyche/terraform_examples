module "default_topics" {
  source     = "../module/pubsub_topics"
  env        = "test"
  topic_name = "topic_d"
}


module "default_subscriptions" {
  source            = "../module/pubsub_subscriptions"
  for_each          = var.project
  env               = each.value.env
  topic_name        = module.default_topics.topic_name
  topic_id          = module.default_topics.topic_id
  bucket_name       = each.value.bucket_name
  subscription_name = each.value.subscription_name
}