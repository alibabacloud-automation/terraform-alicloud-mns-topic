output "topic_name" {
  description = "The name of the topic"
  value       = module.topic.topic_name
}

output "subscription_name" {
  description = "The name of the subscription"
  value       = module.topic_subscription.subscription_name
}