variable "region" {
  description = "(Deprecated from version 1.2.0) The region used to launch this module resources."
  type        = string
  default     = ""
}

##############################################################
#variables for db alicloud_msn_topic
##############################################################
variable "topic_name" {
  description = "Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters."
  type        = string
  default     = ""
}

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
variable "subscription_name" {
  description = "the Subscription Name,Two subcription Name on a single topic in the same region cannot have the same name.A subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters."
  type        = string
  default     = ""
}

variable "endpoint" {
  description = "Describe the terminal address of the message received in this subscription. email format: mail:directmail:XXX@YYY.com ,   queue format: http(s)://AccountId.mns.regionId.aliyuncs.com/, http format: http(s)://www.xxx.com/xxx"
  type        = string
  default     = ""
}

variable "notify_strategy" {
  description = "The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. the attribute has two value EXPONENTIAL_DECAY_RETR or BACKOFF_RETRY "
  type        = string
  default     = "BACKOFF_RETRY"
}

variable "notify_content_format" {
  description = "The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. the attribute has two value SIMPLIFIED or XML"
  type        = string
  default     = "XML"
}

variable "filter_tag" {
  description = "Message Filter Label"
  type        = string
  default     = ""
}

