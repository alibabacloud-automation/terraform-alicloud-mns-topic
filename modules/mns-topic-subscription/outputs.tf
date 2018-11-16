locals {
  this_subscription_name               = "${alicloud_mns_topic_subscription.this_subscription.name}"
}

output "subcription_name"{
	value = "${local.this_subscription_name}"
}