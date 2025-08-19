import {
  to = segment_destination_subscription.id-635166ad0c6135b7083cdf9e_cWVN9swnhAqVTTGtyiFF7P
  id = "635166ad0c6135b7083cdf9e:cWVN9swnhAqVTTGtyiFF7P"
}

resource "segment_destination_subscription" "id-635166ad0c6135b7083cdf9e_cWVN9swnhAqVTTGtyiFF7P" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "635166ad0c6135b7083cdf9e"
  enabled              = true
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    external_id = {
      "@path" = "$.userId"
    }
    products = {
      "@path" = "$.properties.products"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "event = \"Order Completed\""
}