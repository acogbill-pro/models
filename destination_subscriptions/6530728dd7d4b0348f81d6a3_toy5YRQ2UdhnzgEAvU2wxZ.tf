import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_toy5YRQ2UdhnzgEAvU2wxZ
  id = "6530728dd7d4b0348f81d6a3:toy5YRQ2UdhnzgEAvU2wxZ"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_toy5YRQ2UdhnzgEAvU2wxZ" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "6530728dd7d4b0348f81d6a3"
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