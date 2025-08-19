import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_6hGkU6Fn21gnD3nXXM78JB
  id = "636576dbf79de0da1d0afade:6hGkU6Fn21gnD3nXXM78JB"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_6hGkU6Fn21gnD3nXXM78JB" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "636576dbf79de0da1d0afade"
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
  trigger = "type = \"track\" and event != \"Order Completed\" and event != \"Product Added\" and event != \"Product Added to Cart\""
}