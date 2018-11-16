# alicloud_mns_topic

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name          |  the name of topic.   |   string  |    no   |    yes       |
|maximum_message_size          | This indicates the maximum length, in bytes, of any message body sent to the topic.   |   int  |    65536  |    no     |
|loggin_enabled          |  is log enabled   |   bool  |    false   |    no       |
 

## Outputs

| Name | Description |
|------|-------------|
| this_topic_name    |     the name of topic        |