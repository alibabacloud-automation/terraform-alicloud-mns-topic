##############################################################
#variables for db alicloud_msn_topic
##############################################################
variable "maximum_message_size" {
  description = "This indicates the maximum length, in bytes, of any message body sent to the topic. Valid value range: 1024-65536, i.e., 1K to 64K."
  type        = number
  default     = 65536
}

variable "logging_enabled" {
  description = "is log enabled ?"
  type        = bool
  default     = false
}

##############################################################
#variables for db alicloud_msn_topic_subscription
##############################################################
variable "notify_strategy" {
  description = "The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. the attribute has two value EXPONENTIAL_DECAY_RETR or BACKOFF_RETRY "
  type        = string
  default     = "BACKOFF_RETRY"
}
