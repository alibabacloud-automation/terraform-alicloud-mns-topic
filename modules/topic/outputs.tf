locals {
  this_topic_name = alicloud_mns_topic.this_topic.name
}

output "topic_name" {
  description = "The name of the topic"
  value       = local.this_topic_name
}