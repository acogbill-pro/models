import {
  to = segment_destination_subscription.id-6615b51b5a1b984233d052dd_gFY9oQh6TW1f3fnu8dJyqt
  id = "6615b51b5a1b984233d052dd:gFY9oQh6TW1f3fnu8dJyqt"
}

resource "segment_destination_subscription" "id-6615b51b5a1b984233d052dd_gFY9oQh6TW1f3fnu8dJyqt" {
  action_id            = "455R6caawb6HFBsewGmtS3"
  destination_id       = "6615b51b5a1b984233d052dd"
  enabled              = true
  model_id             = null
  name                 = "Update Cart Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    items = {
      "@arrayPath" = ["$.properties.products", {
        categories = {
          "@path" = "category"
        }
        description = {
          "@path" = "description"
        }
        id = {
          "@path" = "product_id"
        }
        imageUrl = {
          "@path" = "image_url"
        }
        name = {
          "@path" = "name"
        }
        price = {
          "@path" = "price"
        }
        quantity = {
          "@path" = "quantity"
        }
        sku = {
          "@path" = "sku"
        }
        url = {
          "@path" = "url"
        }
      }]
    }
    user = {
      dataFields = {
        "@path" = "$.context.traits"
      }
      email = {
        "@if" = {
          else = {
            "@path" = "$.context.traits.email"
          }
          exists = {
            "@path" = "$.properties.email"
          }
          then = {
            "@path" = "$.properties.email"
          }
        }
      }
      mergeNestedObjects = false
      phoneNumber = {
        "@path" = "$.context.traits.phone"
      }
      userId = {
        "@path" = "$.userId"
      }
    }
  })
  trigger = "type = \"track\" and event = \"Cart Updated\""
}