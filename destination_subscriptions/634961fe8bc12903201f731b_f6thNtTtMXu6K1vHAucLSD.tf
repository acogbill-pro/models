import {
  to = segment_destination_subscription.id-634961fe8bc12903201f731b_f6thNtTtMXu6K1vHAucLSD
  id = "634961fe8bc12903201f731b:f6thNtTtMXu6K1vHAucLSD"
}

resource "segment_destination_subscription" "id-634961fe8bc12903201f731b_f6thNtTtMXu6K1vHAucLSD" {
  action_id            = "cRSyn3B292uKfxrpKwHRDY"
  destination_id       = "634961fe8bc12903201f731b"
  enabled              = false
  model_id             = null
  name                 = "Log Purchase"
  reverse_etl_schedule = null
  settings = jsonencode({
    adid = {
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
    app_version = {
      "@path" = "$.context.app.version"
    }
    carrier = {
      "@path" = "$.context.network.carrier"
    }
    city = {
      "@path" = "$.context.location.city"
    }
    country = {
      "@path" = "$.context.location.country"
    }
    device_brand = {
      "@path" = "$.context.device.brand"
    }
    device_id = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.context.device.id"
        }
        then = {
          "@path" = "$.context.device.id"
        }
      }
    }
    device_manufacturer = {
      "@path" = "$.context.device.manufacturer"
    }
    device_model = {
      "@path" = "$.context.device.model"
    }
    event_properties = {
      "@path" = "$.properties"
    }
    event_type = {
      "@path" = "$.event"
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
    idfv = {
      "@path" = "$.context.device.id"
    }
    ip = {
      "@path" = "$.context.ip"
    }
    language = {
      "@path" = "$.context.locale"
    }
    library = {
      "@path" = "$.context.library.name"
    }
    location_lat = {
      "@path" = "$.context.location.latitude"
    }
    location_lng = {
      "@path" = "$.context.location.longitude"
    }
    os_name = {
      "@path" = "$.context.os.name"
    }
    os_version = {
      "@path" = "$.context.os.version"
    }
    platform = {
      "@path" = "$.context.device.type"
    }
    price = {
      "@path" = "$.properties.price"
    }
    productId = {
      "@path" = "$.properties.productId"
    }
    products = {
      "@arrayPath" = ["$.properties.products", {
        price = {
          "@path" = "price"
        }
        productId = {
          "@path" = "productId"
        }
        quantity = {
          "@path" = "quantity"
        }
        revenue = {
          "@path" = "revenue"
        }
        revenueType = {
          "@path" = "revenueType"
        }
      }]
    }
    quantity = {
      "@path" = "$.properties.quantity"
    }
    referrer = {
      "@path" = "$.context.page.referrer"
    }
    region = {
      "@path" = "$.context.location.region"
    }
    revenue = {
      "@path" = "$.properties.revenue"
    }
    revenueType = {
      "@path" = "$.properties.revenueType"
    }
    session_id = {
      "@path" = "$.integrations.Actions Amplitude.session_id"
    }
    time = {
      "@path" = "$.timestamp"
    }
    trackRevenuePerProduct = false
    use_batch_endpoint     = false
    userAgent = {
      "@path" = "$.context.userAgent"
    }
    userAgentData = {
      model = {
        "@path" = "$.context.userAgentData.model"
      }
      platformVersion = {
        "@path" = "$.context.userAgentData.platformVersion"
      }
    }
    userAgentParsing = true
    user_id = {
      "@path" = "$.userId"
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
  })
  trigger = "type = \"track\""
}