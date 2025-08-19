import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_2g6KB7BQNKCWtaaXgXGZiD
  id = "653ecee488d8b39d6c77c12c:2g6KB7BQNKCWtaaXgXGZiD"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_2g6KB7BQNKCWtaaXgXGZiD" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "653ecee488d8b39d6c77c12c"
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