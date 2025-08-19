import {
  to = segment_destination_subscription.id-636576dbf79de0da1d0afade_9DwtN5CpkiGmkjHtLSoHfa
  id = "636576dbf79de0da1d0afade:9DwtN5CpkiGmkjHtLSoHfa"
}

resource "segment_destination_subscription" "id-636576dbf79de0da1d0afade_9DwtN5CpkiGmkjHtLSoHfa" {
  action_id            = "5aqZ2N6VPZKq5o8K1r957p"
  destination_id       = "636576dbf79de0da1d0afade"
  enabled              = false
  model_id             = null
  name                 = "Begin Checkout"
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
    coupon = {
      "@path" = "$.properties.coupon"
    }
    currency = {
      "@path" = "$.properties.currency"
    }
    engagement_time_msec = 1
    items = {
      "@arrayPath" = [{
        "@path" = "$.properties.products"
        }, {
        affiliation = {
          "@path" = "$.affiliation"
        }
        coupon = {
          "@path" = "$.coupon"
        }
        index = {
          "@path" = "$.position"
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
  trigger = "type = \"track\" and event = \"Checkout Started\""
}