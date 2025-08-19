import {
  to = segment_destination_subscription.id-653072dd1f72aa9ad03fc269_6N3ehHwVQrs7yhoVL3vx7A
  id = "653072dd1f72aa9ad03fc269:6N3ehHwVQrs7yhoVL3vx7A"
}

resource "segment_destination_subscription" "id-653072dd1f72aa9ad03fc269_6N3ehHwVQrs7yhoVL3vx7A" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "653072dd1f72aa9ad03fc269"
  enabled              = false
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\""
}