import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_2YKWYBzfJgDptBFJfJ8Ly9
  id = "6530724d161d3762ca84b7f9:2YKWYBzfJgDptBFJfJ8Ly9"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_2YKWYBzfJgDptBFJfJ8Ly9" {
  action_id            = "tVLMy9L1jG6K6c8AuxWGiP"
  destination_id       = "6530724d161d3762ca84b7f9"
  enabled              = true
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