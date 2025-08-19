import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_8bUkCtBU1iQhuHAWDyKHdU
  id = "636576dbf79de0da1d0afade:8bUkCtBU1iQhuHAWDyKHdU"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_8bUkCtBU1iQhuHAWDyKHdU" {
  action_id            = "21Vhf5XWiD5aLnzvq4k9yy"
  destination_id       = "636576dbf79de0da1d0afade"
  enabled              = true
  model_id             = null
  name                 = "Page View"
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
    page_location = {
      "@path" = "$.context.page.url"
    }
    page_referrer = {
      "@path" = "$.context.page.referrer"
    }
    page_title = {
      "@path" = "$.context.page.title"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"page\""
}