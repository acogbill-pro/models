import {
  to = segment_destination_subscription.id-635166ad0c6135b7083cdf9e_pEh6iCxDTF8vfxDiroC2gV
  id = "635166ad0c6135b7083cdf9e:pEh6iCxDTF8vfxDiroC2gV"
}

resource "segment_destination_subscription" "id-635166ad0c6135b7083cdf9e_pEh6iCxDTF8vfxDiroC2gV" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "635166ad0c6135b7083cdf9e"
  enabled              = true
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