import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_kjiuzEbjqbfWmy1FT5BS9J
  id = "636576dbf79de0da1d0afade:kjiuzEbjqbfWmy1FT5BS9J"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_kjiuzEbjqbfWmy1FT5BS9J" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "636576dbf79de0da1d0afade"
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