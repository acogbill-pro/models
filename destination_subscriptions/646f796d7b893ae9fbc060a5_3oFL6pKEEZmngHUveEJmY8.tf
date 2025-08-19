import {
  to = segment_destination_subscription.id-646f796d7b893ae9fbc060a5_3oFL6pKEEZmngHUveEJmY8
  id = "646f796d7b893ae9fbc060a5:3oFL6pKEEZmngHUveEJmY8"
}

resource "segment_destination_subscription" "id-646f796d7b893ae9fbc060a5_3oFL6pKEEZmngHUveEJmY8" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "646f796d7b893ae9fbc060a5"
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
      "product name" = {
        "@template" = "{{__segment_entities.marketing-east.product-entity.NAME}}"
      }
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "event = \"Order Completed\""
}