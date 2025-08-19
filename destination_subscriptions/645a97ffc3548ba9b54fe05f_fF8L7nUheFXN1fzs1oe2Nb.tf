import {
  to = segment_destination_subscription.id-645a97ffc3548ba9b54fe05f_fF8L7nUheFXN1fzs1oe2Nb
  id = "645a97ffc3548ba9b54fe05f:fF8L7nUheFXN1fzs1oe2Nb"
}

resource "segment_destination_subscription" "id-645a97ffc3548ba9b54fe05f_fF8L7nUheFXN1fzs1oe2Nb" {
  action_id            = "kJJRs3S5EiVC8At7GZt9nX"
  destination_id       = "645a97ffc3548ba9b54fe05f"
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