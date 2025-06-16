import {
  to = segment_destination_subscription.id-6619bbea9effa6d8a6d5b7a2_vVrfjyx8VNaoXiSyQV9aVG
  id = "6619bbea9effa6d8a6d5b7a2:vVrfjyx8VNaoXiSyQV9aVG"
}

resource "segment_destination_subscription" "id-6619bbea9effa6d8a6d5b7a2_vVrfjyx8VNaoXiSyQV9aVG" {
  action_id            = "2P24zUSAL8BUpyGYNGmD7M"
  destination_id       = "6619bbea9effa6d8a6d5b7a2"
  enabled              = false
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    country = {
      "@path" = "$.context.location.country"
    }
    current_location = {
      latitude = {
        "@path" = "$.context.location.latitude"
      }
      longitude = {
        "@path" = "$.context.location.longitude"
      }
    }
    custom_attributes = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    first_name = {
      "@path" = "$.traits.firstName"
    }
    gender = {
      "@path" = "$.traits.gender"
    }
    home_city = {
      "@path" = "$.traits.address.city"
    }
    image_url = {
      "@path" = "$.traits.avatar"
    }
    last_name = {
      "@path" = "$.traits.lastName"
    }
  })
  trigger = "type = \"identify\""
}