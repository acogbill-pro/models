import {
  to = segment_destination_subscription.id-645a97ffc3548ba9b54fe05f_vpYxQDK5ppur1WNsPkcsZM
  id = "645a97ffc3548ba9b54fe05f:vpYxQDK5ppur1WNsPkcsZM"
}

resource "segment_destination_subscription" "id-645a97ffc3548ba9b54fe05f_vpYxQDK5ppur1WNsPkcsZM" {
  action_id            = "6CHmQRmGR9QiQAAVPzukE9"
  destination_id       = "645a97ffc3548ba9b54fe05f"
  enabled              = true
  model_id             = null
  name                 = "Add to Cart"
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
        item_category = {
          "@path" = "$.category"
        }
        item_id = "SKU"
        item_name = {
          "@path" = "$.name"
        }
        item_variant = {
          "@path" = "$.variant"
        }
        price = {
          "@path" = "$.priceUSD"
        }
        quantity = {
          "@path" = "$.quantity"
        }
      }]
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_id = "user_id"
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event = \"Product Added to Cart\""
}