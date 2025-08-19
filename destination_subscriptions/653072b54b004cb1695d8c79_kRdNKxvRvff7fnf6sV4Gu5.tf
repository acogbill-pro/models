import {
  to = segment_destination_subscription.id-653072b54b004cb1695d8c79_kRdNKxvRvff7fnf6sV4Gu5
  id = "653072b54b004cb1695d8c79:kRdNKxvRvff7fnf6sV4Gu5"
}

resource "segment_destination_subscription" "id-653072b54b004cb1695d8c79_kRdNKxvRvff7fnf6sV4Gu5" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "653072b54b004cb1695d8c79"
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