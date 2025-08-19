import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_JHVJrjvazj9gmXZkrWfCV
  id = "636576dbf79de0da1d0afade:JHVJrjvazj9gmXZkrWfCV"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_JHVJrjvazj9gmXZkrWfCV" {
  action_id            = "pCFL7LEjS3hLGfaXEPQH3x"
  destination_id       = "636576dbf79de0da1d0afade"
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