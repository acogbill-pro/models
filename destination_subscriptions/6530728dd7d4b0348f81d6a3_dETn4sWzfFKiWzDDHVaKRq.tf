import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_dETn4sWzfFKiWzDDHVaKRq
  id = "6530728dd7d4b0348f81d6a3:dETn4sWzfFKiWzDDHVaKRq"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_dETn4sWzfFKiWzDDHVaKRq" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "6530728dd7d4b0348f81d6a3"
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