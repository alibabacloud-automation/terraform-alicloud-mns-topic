module "topic" {
  source = "../modules/topic"

  ###############################################################
  #variables for topic
  ##############################################################
  topic_name = "tf-example-mnstopic"

  maximum_message_size = 65536
  logging_enabled      = true
}

module "topic_subscrition" {
  source = "../modules/topic-subscription"

  ###############################################################
  #variables for subscription
  ##############################################################

  topic_name            = module.topic.topic_name
  subscription_name     = "tf-example-mnstopic-subscription"
  endpoint              = "http://www.xxx.com/notifyback.htm"
  filter_tag            = "test"
  notify_strategy       = "BACKOFF_RETRY"
  notify_content_format = "XML"
}

