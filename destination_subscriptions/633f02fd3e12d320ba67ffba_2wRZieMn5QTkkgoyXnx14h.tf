import {
  to = segment_destination_subscription.id-633f02fd3e12d320ba67ffba_2wRZieMn5QTkkgoyXnx14h
  id = "633f02fd3e12d320ba67ffba:2wRZieMn5QTkkgoyXnx14h"
}

resource "segment_destination_subscription" "id-633f02fd3e12d320ba67ffba_2wRZieMn5QTkkgoyXnx14h" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "633f02fd3e12d320ba67ffba"
  enabled              = true
  model_id             = null
  name                 = "Page View"
  reverse_etl_schedule = null
  settings = jsonencode({
    clientId = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    engagement_time_msec = 1
    page_location = {
      "@path" = "$.context.page.url"
    }
    page_referrer = {
      "@path" = "$.context.page.referrer"
    }
    page_title = {
      "@path" = "$.context.page.title"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"page\""
}