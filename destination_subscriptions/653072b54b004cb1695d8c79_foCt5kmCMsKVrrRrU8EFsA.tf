import {
  to = segment_destination_subscription.id-653072b54b004cb1695d8c79_foCt5kmCMsKVrrRrU8EFsA
  id = "653072b54b004cb1695d8c79:foCt5kmCMsKVrrRrU8EFsA"
}

resource "segment_destination_subscription" "id-653072b54b004cb1695d8c79_foCt5kmCMsKVrrRrU8EFsA" {
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