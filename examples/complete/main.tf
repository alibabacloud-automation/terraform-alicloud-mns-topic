module "example" {
  source = "../.."

  #alicloud_mns_topic
  topic_name           = "tf-topic-name"
  maximum_message_size = var.maximum_message_size
  logging_enabled      = var.logging_enabled

  #alicloud_mns_topic_subscription
  subscription_name     = "tf-subscription-name"
  endpoint              = "http://www.xxx.com/notifyback.htm"
  filter_tag            = "test"
  notify_strategy       = var.notify_strategy
  notify_content_format = "XML"
}

