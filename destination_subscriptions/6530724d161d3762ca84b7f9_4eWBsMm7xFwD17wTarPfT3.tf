import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_4eWBsMm7xFwD17wTarPfT3
  id = "6530724d161d3762ca84b7f9:4eWBsMm7xFwD17wTarPfT3"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_4eWBsMm7xFwD17wTarPfT3" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "6530724d161d3762ca84b7f9"
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