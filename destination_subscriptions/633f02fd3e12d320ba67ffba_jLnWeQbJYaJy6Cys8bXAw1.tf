import {
  to = segment_destination_subscription.id-633f02fd3e12d320ba67ffba_jLnWeQbJYaJy6Cys8bXAw1
  id = "633f02fd3e12d320ba67ffba:jLnWeQbJYaJy6Cys8bXAw1"
}

resource "segment_destination_subscription" "id-633f02fd3e12d320ba67ffba_jLnWeQbJYaJy6Cys8bXAw1" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "633f02fd3e12d320ba67ffba"
  enabled              = false
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