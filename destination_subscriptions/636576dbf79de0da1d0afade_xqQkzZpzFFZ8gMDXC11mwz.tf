import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_xqQkzZpzFFZ8gMDXC11mwz
  id = "636576dbf79de0da1d0afade:xqQkzZpzFFZ8gMDXC11mwz"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_xqQkzZpzFFZ8gMDXC11mwz" {
  action_id            = "tVLMy9L1jG6K6c8AuxWGiP"
  destination_id       = "636576dbf79de0da1d0afade"
  enabled              = false
  model_id             = null
  name                 = "Remove from Cart"
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
    currency = {
      "@path" = "$.properties.currency"
    }
    engagement_time_msec = 1
    items = {
      "@arrayPath" = [{
        "@path" = "$.properties"
        }, {
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
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event = \"Product Removed\""
}