import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_weEitytfbM75hvA7SKj7jF
  id = "653ecee488d8b39d6c77c12c:weEitytfbM75hvA7SKj7jF"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_weEitytfbM75hvA7SKj7jF" {
  action_id            = "pCFL7LEjS3hLGfaXEPQH3x"
  destination_id       = "653ecee488d8b39d6c77c12c"
  enabled              = false
  model_id             = null
  name                 = "Login"
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
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\" and event = \"Signed In\""
}