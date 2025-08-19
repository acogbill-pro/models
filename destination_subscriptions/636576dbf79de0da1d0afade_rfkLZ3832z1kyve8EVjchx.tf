import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_rfkLZ3832z1kyve8EVjchx
  id = "636576dbf79de0da1d0afade:rfkLZ3832z1kyve8EVjchx"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_rfkLZ3832z1kyve8EVjchx" {
  action_id            = "xBj1Vpdp5BWErfezRDxczN"
  destination_id       = "636576dbf79de0da1d0afade"
  enabled              = false
  model_id             = null
  name                 = "Select Item"
  reverse_etl_schedule = null
  settings = jsonencode({
    client_id = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    data_stream_type     = "Web"
    engagement_time_msec = 1
    items = {
      "@arrayPath" = ["$.properties", {
        affiliation = {
          "@path" = "$.affiliation"
        }
        coupon = {
          "@path" = "$.coupon"
        }
        item_brand = {
          "@path" = "$.brand"
        }
        item_category = {
          "@path" = "$.category"
        }
        item_id = {
          "@path" = "$.product_id"
        }
        item_name = {
          "@path" = "$.name"
        }
        item_variant = {
          "@path" = "$.variant"
        }
        price = {
          "@path" = "$.price"
        }
        quantity = {
          "@path" = "$.quantity"
        }
      }]
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\" and event = \"Product Clicked\""
}