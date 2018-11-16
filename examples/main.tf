module "mns_topic" {
  source = "./modules/mns-topic"
  
  ###############################################################
  #variables for topic
  ##############################################################
  topic_name="tf-example-mnstopic"
  maximum_message_size=65536
  logging_enabled=true

}

module "mns_topic_subscrition" {
  source = "./modules/mns-topic-subscrition"

  ###############################################################
  #variables for subscription
  ##############################################################

  topic_name="${module.topic.this_topic_name}"
  subscription_name="tf-example-mnstopic-subscription"
  endpoint="http://localhost:7001/notifyback.htm"
  filter_tag="test"
  notify_strategy="BACKOFF_RETRY"
  notify_content_format= "XML"
}