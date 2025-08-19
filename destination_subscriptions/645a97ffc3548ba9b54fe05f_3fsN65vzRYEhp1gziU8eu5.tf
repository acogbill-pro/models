import {
  to = segment_destination_subscription.id-645a97ffc3548ba9b54fe05f_3fsN65vzRYEhp1gziU8eu5
  id = "645a97ffc3548ba9b54fe05f:3fsN65vzRYEhp1gziU8eu5"
}

resource "segment_destination_subscription" "id-645a97ffc3548ba9b54fe05f_3fsN65vzRYEhp1gziU8eu5" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "645a97ffc3548ba9b54fe05f"
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
  trigger = "type = \"track\""
}