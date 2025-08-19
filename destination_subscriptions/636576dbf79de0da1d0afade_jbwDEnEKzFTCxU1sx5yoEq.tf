import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_jbwDEnEKzFTCxU1sx5yoEq
  id = "636576dbf79de0da1d0afade:jbwDEnEKzFTCxU1sx5yoEq"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_jbwDEnEKzFTCxU1sx5yoEq" {
  action_id            = "kJJRs3S5EiVC8At7GZt9nX"
  destination_id       = "636576dbf79de0da1d0afade"
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