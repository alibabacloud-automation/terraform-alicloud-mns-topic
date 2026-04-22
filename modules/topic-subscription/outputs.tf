locals {
  this_subscription_name = alicloud_mns_topic_subscription.this_subscription.name
}

output "subscription_name" {
  description = "The name of the subscription"
  value       = local.this_subscription_name
}