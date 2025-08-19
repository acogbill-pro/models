import {
  to = segment_destination_subscription.id-633f02fd3e12d320ba67ffba_gBQ9HvMRqzApHdDDqivUHz
  id = "633f02fd3e12d320ba67ffba:gBQ9HvMRqzApHdDDqivUHz"
}

resource "segment_destination_subscription" "id-633f02fd3e12d320ba67ffba_gBQ9HvMRqzApHdDDqivUHz" {
  action_id            = "kJJRs3S5EiVC8At7GZt9nX"
  destination_id       = "633f02fd3e12d320ba67ffba"
  enabled              = true
  model_id             = null
  name                 = "Registration"
  reverse_etl_schedule = null
  settings = jsonencode({
    client_id = {
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
    method = {
      "@path" = "$.properties.type"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"track\" and event = \"User Registered\""
}