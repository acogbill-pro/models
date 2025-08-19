import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_jNc4WZ8z884yLVuW46avNK
  id = "6530724d161d3762ca84b7f9:jNc4WZ8z884yLVuW46avNK"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_jNc4WZ8z884yLVuW46avNK" {
  action_id            = "6CHmQRmGR9QiQAAVPzukE9"
  destination_id       = "6530724d161d3762ca84b7f9"
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