provider "alicloud" {
  version              = ">=1.56.0"
  region               = var.region != "" ? var.region : null
  configuration_source = "terraform-alicloud-modules/mns-topic"
}

module "topic" {
  source = "./modules/topic"

  ###############################################################
  #variables for topic
  ##############################################################
  topic_name = var.topic_name

  maximum_message_size = var.maximum_message_size
  logging_enabled      = var.logging_enabled
}

module "topic_subscription" {
  source = "./modules/topic-subscription"

  ###############################################################
  #variables for subscription
  ##############################################################
  topic_name = module.topic.topic_name

  subscription_name     = var.subscription_name
  endpoint              = var.endpoint
  filter_tag            = var.filter_tag
  notify_strategy       = var.notify_strategy
  notify_content_format = var.notify_content_format
}

