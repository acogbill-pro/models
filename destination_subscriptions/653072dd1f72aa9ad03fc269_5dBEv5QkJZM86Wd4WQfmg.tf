import {
  to = segment_destination_subscription.id-653072dd1f72aa9ad03fc269_5dBEv5QkJZM86Wd4WQfmg
  id = "653072dd1f72aa9ad03fc269:5dBEv5QkJZM86Wd4WQfmg"
}

resource "segment_destination_subscription" "id-653072dd1f72aa9ad03fc269_5dBEv5QkJZM86Wd4WQfmg" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "653072dd1f72aa9ad03fc269"
  enabled              = false
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