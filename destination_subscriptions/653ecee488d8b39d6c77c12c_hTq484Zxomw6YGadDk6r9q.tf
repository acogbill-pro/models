import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_hTq484Zxomw6YGadDk6r9q
  id = "653ecee488d8b39d6c77c12c:hTq484Zxomw6YGadDk6r9q"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_hTq484Zxomw6YGadDk6r9q" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "653ecee488d8b39d6c77c12c"
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