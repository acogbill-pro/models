import {
  to = segment_destination_subscription.id-6532dd9953706ae93c387c6a_t4y9VtFLmZALcnaBv82zZB
  id = "6532dd9953706ae93c387c6a:t4y9VtFLmZALcnaBv82zZB"
}

resource "segment_destination_subscription" "id-6532dd9953706ae93c387c6a_t4y9VtFLmZALcnaBv82zZB" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6532dd9953706ae93c387c6a"
  enabled              = true
  model_id             = null
  name                 = "Send"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://fn.segmentapis.com/?b=amVRYThNSjhWV25RVFkzOWJKQWpUZjo6cmk2NlNvU01DSHlHUWdoVzZkTk1UWjVJQ05qZExZVG8="
  })
  trigger = "properties.timestamp != null and type = \"track\""
}