import {
  to = segment_destination_subscription.id-645a97ffc3548ba9b54fe05f_ovU77WKMELYCYaqQm4gF1J
  id = "645a97ffc3548ba9b54fe05f:ovU77WKMELYCYaqQm4gF1J"
}

resource "segment_destination_subscription" "id-645a97ffc3548ba9b54fe05f_ovU77WKMELYCYaqQm4gF1J" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "645a97ffc3548ba9b54fe05f"
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