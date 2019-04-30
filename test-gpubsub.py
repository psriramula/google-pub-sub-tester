from subscriber import create_subscription
from publisher import create_topic
project_id = "my-fast-trace-project1"
topic_name = "TEST_TOPIC_ID"
subscription_name = "number-one-sub-1"
topic_res = create_topic(project_id, topic_name)
subsction_res = create_subscription(project_id, topic_name, subscription_name)
