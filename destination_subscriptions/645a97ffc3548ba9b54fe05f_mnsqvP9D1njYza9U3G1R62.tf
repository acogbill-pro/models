import {
  to = segment_destination_subscription.id-645a97ffc3548ba9b54fe05f_mnsqvP9D1njYza9U3G1R62
  id = "645a97ffc3548ba9b54fe05f:mnsqvP9D1njYza9U3G1R62"
}

resource "segment_destination_subscription" "id-645a97ffc3548ba9b54fe05f_mnsqvP9D1njYza9U3G1R62" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "645a97ffc3548ba9b54fe05f"
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