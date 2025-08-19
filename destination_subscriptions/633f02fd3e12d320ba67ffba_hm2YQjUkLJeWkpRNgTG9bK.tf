import {
  to = segment_destination_subscription.id-633f02fd3e12d320ba67ffba_hm2YQjUkLJeWkpRNgTG9bK
  id = "633f02fd3e12d320ba67ffba:hm2YQjUkLJeWkpRNgTG9bK"
}

resource "segment_destination_subscription" "id-633f02fd3e12d320ba67ffba_hm2YQjUkLJeWkpRNgTG9bK" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "633f02fd3e12d320ba67ffba"
  enabled              = false
  model_id             = null
  name                 = "Increment"
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
    lowercase            = false
    name                 = "Increment"
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"track\""
}