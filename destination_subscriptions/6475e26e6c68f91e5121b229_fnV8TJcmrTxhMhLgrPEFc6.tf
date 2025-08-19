import {
  to = segment_destination_subscription.id-6475e26e6c68f91e5121b229_fnV8TJcmrTxhMhLgrPEFc6
  id = "6475e26e6c68f91e5121b229:fnV8TJcmrTxhMhLgrPEFc6"
}

resource "segment_destination_subscription" "id-6475e26e6c68f91e5121b229_fnV8TJcmrTxhMhLgrPEFc6" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "6475e26e6c68f91e5121b229"
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