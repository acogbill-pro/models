import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_vrnyssJ9iT8ZbcBA3JeLck
  id = "653ecee488d8b39d6c77c12c:vrnyssJ9iT8ZbcBA3JeLck"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_vrnyssJ9iT8ZbcBA3JeLck" {
  action_id            = "tVLMy9L1jG6K6c8AuxWGiP"
  destination_id       = "653ecee488d8b39d6c77c12c"
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