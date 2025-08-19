import {
  to = segment_tracking_plan.id-tp_2mwQvkfYYvkXRdK1tLlX4RjDR1z
  id = "tp_2mwQvkfYYvkXRdK1tLlX4RjDR1z"
}

resource "segment_tracking_plan" "id-tp_2mwQvkfYYvkXRdK1tLlX4RjDR1z" {
  description = "description"
  name        = "Demo Example"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "DO NOT EDIT. Event generated to store end users consent preferences for Unify and Twilio Engage."
        properties = {
          context = {
            type = "object"
          }
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Segment Consent Preference Updated"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              SKU = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              description = {
                type = ["string"]
              }
              name = {
                type = ["string"]
              }
              priceUSD = {
                type = ["integer"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Product Added to Cart"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              SKU = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              description = {
                type = ["string"]
              }
              name = {
                type = ["string"]
              }
              priceUSD = {
                type = ["integer"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Product Recommended"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              WarehouseID = {
                description = ""
                id          = "/properties/properties/properties/WarehouseID"
                type        = "integer"
              }
            }
            required = ["WarehouseID"]
            type     = "object"
          }
          traits = {
            type = "object"
          }
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Warehouse Error"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              category = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Product Category Recommended"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              pregnancy = {
                id   = "/properties/properties/properties/pregnancy"
                type = ["integer"]
              }
              quantity = {
                id   = "/properties/properties/properties/quantity"
                type = ["integer"]
              }
              sleep = {
                id   = "/properties/properties/properties/sleep"
                type = ["integer"]
              }
              value = {
                id   = "/properties/properties/properties/value"
                type = ["integer"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Shop Closed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              rogueProperty = {
                description = ""
                id          = "/properties/properties/properties/rogueProperty"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Rogue Event"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              userId = {
                description = ""
                id          = "/properties/properties/properties/userId"
                type        = "string"
              }
            }
            required = ["userId"]
            type     = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "User Logged In"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Viewed All Products In Category"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Abandoned Cart"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Cart Closed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Empty Cart"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}