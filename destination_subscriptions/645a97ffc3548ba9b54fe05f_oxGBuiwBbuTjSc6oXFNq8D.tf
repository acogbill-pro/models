import {
  to = segment_destination_subscription.id-645a97ffc3548ba9b54fe05f_oxGBuiwBbuTjSc6oXFNq8D
  id = "645a97ffc3548ba9b54fe05f:oxGBuiwBbuTjSc6oXFNq8D"
}

resource "segment_destination_subscription" "id-645a97ffc3548ba9b54fe05f_oxGBuiwBbuTjSc6oXFNq8D" {
  action_id            = "pCFL7LEjS3hLGfaXEPQH3x"
  destination_id       = "645a97ffc3548ba9b54fe05f"
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