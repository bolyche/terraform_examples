output "subscription_detail" {
  value = flatten([
    for topic_key, topic_value in module.default_topics : [
      for project_item in var.project : {
        project_id        = project_item.project_id
        env               = project_item.env
        subscription_name = project_item.subscription_name
        topic_id          = topic_value.topic_id
        topic_name        = topic_value.topic_name
      }
    ]
  ])
}