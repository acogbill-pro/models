import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_85btzGHNViD1GcbgSWo2j9
  id = "6530728dd7d4b0348f81d6a3:85btzGHNViD1GcbgSWo2j9"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_85btzGHNViD1GcbgSWo2j9" {
  action_id            = "kJJRs3S5EiVC8At7GZt9nX"
  destination_id       = "6530728dd7d4b0348f81d6a3"
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