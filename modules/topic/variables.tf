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

