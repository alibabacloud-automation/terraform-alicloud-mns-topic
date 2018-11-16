
output "topic_name" {
  value       = "${module.mns_topic.this_topic_name}"
}

output "subscription_name" {
  value       = "${module.mns_topic_subscription.this_subscription_name}"
}