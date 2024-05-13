// NB invoking persistent resources in this way is only really useful if you're replicating the same (storage) configuration over many projects

module "default_topics" {
  source     = "../module/storage"
  env        = "test"
  project_id = "your-project-id"
  client_feed_1 = "bucket_1"
  client_feed_2 = "bucket_2"
  client_feed_3 = "bucket_3"
  client_feed_4 = "bucket_4"
  client_feed_5 = "bucket_5"
}