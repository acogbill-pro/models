import {
  to = segment_destination_subscription.id-635166ad0c6135b7083cdf9e_7nVPZskw8iw27mi7pAeMnJ
  id = "635166ad0c6135b7083cdf9e:7nVPZskw8iw27mi7pAeMnJ"
}

resource "segment_destination_subscription" "id-635166ad0c6135b7083cdf9e_7nVPZskw8iw27mi7pAeMnJ" {
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