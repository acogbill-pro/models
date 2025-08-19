import {
  to = segment_destination_subscription.id-6619bbea9effa6d8a6d5b7a2_aRj2bQkhyYRcDzPwfNHPi
  id = "6619bbea9effa6d8a6d5b7a2:aRj2bQkhyYRcDzPwfNHPi"
}

resource "segment_destination_subscription" "id-6619bbea9effa6d8a6d5b7a2_aRj2bQkhyYRcDzPwfNHPi" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "6619bbea9effa6d8a6d5b7a2"
  enabled              = false
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@template" = "{{properties.braze_id}}"
    }
    email = {
      "@template" = "{{traits.email}}"
    }
    enable_batching = true
    external_id = {
      "@template" = "{{userId}}"
    }
    products = {
      "@template" = "{{properties.products}}"
    }
    properties = {
      "@template" = "{{properties}}"
    }
    time = {
      "@template" = "{{receivedAt}}"
    }
  })
  trigger = "event = \"Order Completed\""
}