module "mns_topic" {
  source = "./modules/mns-topic"
  
  ###############################################################
  #variables for topic
  ##############################################################
  topic_name="${var.topic_name}"
  maximum_message_size=${var.maximum_message_size}
  logging_enabled=${var.logging_enabled}

}

module "mns_topic_subscrition" {
  source = "./modules/mns-topic-subscrition"

  ###############################################################
  #variables for subscription
  ##############################################################

  topic_name="${module.topic.this_topic_name}"
  subscription_name="${var.subscription_name}"
  endpoint="${var.endpoint}"
  filter_tag="${var.fitler_flag}"
  notify_strategy="${var.notify_strategy}"
  notify_content_format="${var.notify_content_format}"
}