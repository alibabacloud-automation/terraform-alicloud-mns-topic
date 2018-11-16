resource "alicloud_mns_topic" "this_topic"{
	name="${var.topic_name}"
	maximum_message_size=${var.maximum_message_size}
	logging_enabled=${var.logging_enabled} 
}