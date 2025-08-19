import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_j9ZVsBipEqhjAjFjBHfy3f
  id = "653ecee488d8b39d6c77c12c:j9ZVsBipEqhjAjFjBHfy3f"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_j9ZVsBipEqhjAjFjBHfy3f" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "653ecee488d8b39d6c77c12c"
  enabled              = true
  model_id             = null
  name                 = "Custom Event"
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
    name = {
      "@path" = "$.event"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\""
}