import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_t6Y9k2RGhkSTU2SXBMxUTE
  id = "6530728dd7d4b0348f81d6a3:t6Y9k2RGhkSTU2SXBMxUTE"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_t6Y9k2RGhkSTU2SXBMxUTE" {
  action_id            = "pCFL7LEjS3hLGfaXEPQH3x"
  destination_id       = "6530728dd7d4b0348f81d6a3"
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