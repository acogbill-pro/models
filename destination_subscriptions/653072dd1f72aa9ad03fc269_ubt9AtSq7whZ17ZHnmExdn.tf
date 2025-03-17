import {
  to = segment_destination_subscription.id-653072dd1f72aa9ad03fc269_ubt9AtSq7whZ17ZHnmExdn
  id = "653072dd1f72aa9ad03fc269:ubt9AtSq7whZ17ZHnmExdn"
}

resource "segment_destination_subscription" "id-653072dd1f72aa9ad03fc269_ubt9AtSq7whZ17ZHnmExdn" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "653072dd1f72aa9ad03fc269"
  enabled              = false
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    enable_batching = false
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      dietary = {
        "@path" = "$.properties.dietary"
      }
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event = \"Owner Confirmed\""
}