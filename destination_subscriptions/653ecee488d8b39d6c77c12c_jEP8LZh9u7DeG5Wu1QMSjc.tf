import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_jEP8LZh9u7DeG5Wu1QMSjc
  id = "653ecee488d8b39d6c77c12c:jEP8LZh9u7DeG5Wu1QMSjc"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_jEP8LZh9u7DeG5Wu1QMSjc" {
  action_id            = "kJJRs3S5EiVC8At7GZt9nX"
  destination_id       = "653ecee488d8b39d6c77c12c"
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