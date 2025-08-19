import {
  to = segment_destination_subscription.id-653072dd1f72aa9ad03fc269_oKt5ZvDgUSKzLo8Rm1Bhc2
  id = "653072dd1f72aa9ad03fc269:oKt5ZvDgUSKzLo8Rm1Bhc2"
}

resource "segment_destination_subscription" "id-653072dd1f72aa9ad03fc269_oKt5ZvDgUSKzLo8Rm1Bhc2" {
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