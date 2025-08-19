import {
  to = segment_destination_subscription.id-636d725339be2277b6f48535_575DLBGncvqQuRoDxcKbjf
  id = "636d725339be2277b6f48535:575DLBGncvqQuRoDxcKbjf"
}

resource "segment_destination_subscription" "id-636d725339be2277b6f48535_575DLBGncvqQuRoDxcKbjf" {
  action_id            = "a6YW8RCSKobYuCSEaiYKqY"
  destination_id       = "636d725339be2277b6f48535"
  enabled              = true
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    app_build = {
      "@path" = "$.context.app.build"
    }
    app_name = {
      "@path" = "$.context.app.name"
    }
    app_namespace = {
      "@path" = "$.context.app.namespace"
    }
    app_version = {
      "@path" = "$.context.app.version"
    }
    bluetooth = {
      "@path" = "$.context.network.bluetooth"
    }
    carrier = {
      "@path" = "$.context.network.carrier"
    }
    cellular = {
      "@path" = "$.context.network.cellular"
    }
    country = {
      "@path" = "$.context.location.country"
    }
    device_id = {
      "@path" = "$.context.device.id"
    }
    device_manufacturer = {
      "@path" = "$.context.device.manufacturer"
    }
    device_model = {
      "@path" = "$.context.device.model"
    }
    device_name = {
      "@path" = "$.context.device.name"
    }
    device_type = {
      "@path" = "$.context.device.type"
    }
    distinct_id = {
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
    enable_batching = true
    event = {
      "@path" = "$.event"
    }
    event_properties = {
      "@path" = "$.properties"
    }
    generatePurchaseEventPerProduct = false
    group_id = {
      "@path" = "$.context.groupId"
    }
    idfa = {
      "@if" = {
        else = {
          "@path" = "$.context.device.idfa"
        }
        exists = {
          "@path" = "$.context.device.advertisingId"
        }
        then = {
          "@path" = "$.context.device.advertisingId"
        }
      }
    }
    insert_id = {
      "@path" = "$.messageId"
    }
    ip = {
      "@path" = "$.context.ip"
    }
    language = {
      "@path" = "$.context.locale"
    }
    library_name = {
      "@path" = "$.context.library.name"
    }
    library_version = {
      "@path" = "$.context.library.version"
    }
    os_name = {
      "@path" = "$.context.os.name"
    }
    os_version = {
      "@path" = "$.context.os.version"
    }
    products = {
      "@arrayPath" = ["$.properties.products", {
        brand = {
          "@path" = "brand"
        }
        category = {
          "@path" = "category"
        }
        coupon = {
          "@path" = "coupon"
        }
        image_url = {
          "@path" = "image_url"
        }
        name = {
          "@path" = "name"
        }
        position = {
          "@path" = "position"
        }
        price = {
          "@path" = "price"
        }
        product_id = {
          "@path" = "product_id"
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
        variant = {
          "@path" = "variant"
        }
      }]
    }
    referrer = {
      "@path" = "$.context.page.referrer"
    }
    region = {
      "@path" = "$.context.location.region"
    }
    screen_density = {
      "@path" = "$.context.screen.density"
    }
    screen_height = {
      "@path" = "$.context.screen.density"
    }
    screen_width = {
      "@path" = "$.context.screen.density"
    }
    time = {
      "@path" = "$.timestamp"
    }
    url = {
      "@path" = "$.context.page.url"
    }
    userAgent = {
      "@path" = "$.context.userAgent"
    }
    user_properties = {
      "@path" = "$.traits"
    }
    utm_properties = {
      utm_campaign = {
        "@path" = "$.context.campaign.name"
      }
      utm_content = {
        "@path" = "$.context.campaign.content"
      }
      utm_medium = {
        "@path" = "$.context.campaign.medium"
      }
      utm_source = {
        "@path" = "$.context.campaign.source"
      }
      utm_term = {
        "@path" = "$.context.campaign.term"
      }
    }
    wifi = {
      "@path" = "$.context.network.wifi"
    }
  })
  trigger = "type = \"track\" and event = \"Order Completed\""
}