import {
  to = segment_tracking_plan.id-tp_2GMJZCFQSiESirL1azeuuT9O2Iv
  id = "tp_2GMJZCFQSiESirL1azeuuT9O2Iv"
}

resource "segment_tracking_plan" "id-tp_2GMJZCFQSiESirL1azeuuT9O2Iv" {
  description = "description"
  name        = "Shop Tracking Plan"
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
              Pregnancy = {
                type = ["integer"]
              }
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
              WarehouseID = {
                description = ""
                id          = "/properties/properties/properties/WarehouseID"
                type        = "integer"
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
      key     = "Shipment Delayed"
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
                description = "Category for articles and products"
                id          = "/properties/properties/properties/category"
                pattern     = "produce"
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
              contents = {
                description = ""
                id          = "/properties/properties/properties/contents"
                properties  = {}
                type        = "string"
              }
              product = {
                description = ""
                id          = "/properties/properties/properties/product"
                properties = {
                  SKU = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/SKU"
                    properties  = {}
                    type        = "string"
                  }
                  category = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/category"
                    properties  = {}
                    type        = "string"
                  }
                  description = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/description"
                    properties  = {}
                    type        = "string"
                  }
                  image = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/image"
                    properties  = {}
                    type        = "string"
                  }
                  name = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/name"
                    properties  = {}
                    type        = "string"
                  }
                  priceUSD = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/priceUSD"
                    properties  = {}
                    type        = "integer"
                  }
                  subCategory = {
                    description = ""
                    id          = "/properties/properties/properties/product/properties/subCategory"
                    properties  = {}
                    type        = "string"
                  }
                }
                required = ["SKU"]
                type     = "object"
              }
              user = {
                description = ""
                id          = "/properties/properties/properties/user"
                properties  = {}
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
      key     = "Product Review"
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
              eventName = {
                description = ""
                id          = "/properties/properties/properties/eventName"
                type        = "string"
              }
              message = {
                description = ""
                id          = "/properties/properties/properties/message"
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
      key     = "SMS Sent"
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
              example = {
                description = ""
                id          = "/properties/properties/properties/example"
                type        = "string"
              }
              products = {
                description = ""
                id          = "/properties/properties/properties/products"
                type        = "array"
              }
              "products.$" = {
                description = ""
                id          = "/properties/properties/properties/products.%24"
                type        = "object"
              }
              "products.$.SKU" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.SKU"
                type        = "string"
              }
              "products.$.category" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.category"
                type        = "string"
              }
              "products.$.description" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.description"
                type        = "string"
              }
              "products.$.name" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.name"
                type        = "string"
              }
              "products.$.priceUSD" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.priceUSD"
                type        = "integer"
              }
              quantity = {
                description = ""
                id          = "/properties/properties/properties/quantity"
                type        = "integer"
              }
              skus = {
                description = ""
                id          = "/properties/properties/properties/skus"
                type        = "array"
              }
              "skus.$" = {
                description = ""
                id          = "/properties/properties/properties/skus.%24"
                type        = "string"
              }
              value = {
                description = ""
                id          = "/properties/properties/properties/value"
                type        = "integer"
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
      key     = "Order Completed"
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
              products = {
                description = ""
                id          = "/properties/properties/properties/products"
                type        = "array"
              }
              "products.$" = {
                description = ""
                id          = "/properties/properties/properties/products.%24"
                type        = "object"
              }
              "products.$.SKU" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.SKU"
                type        = "string"
              }
              "products.$.category" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.category"
                type        = "string"
              }
              "products.$.description" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.description"
                type        = "string"
              }
              "products.$.name" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.name"
                type        = "string"
              }
              "products.$.priceUSD" = {
                description = ""
                id          = "/properties/properties/properties/products.%24.priceUSD"
                type        = "integer"
              }
              quantity = {
                description = ""
                id          = "/properties/properties/properties/quantity"
                type        = "integer"
              }
              skus = {
                description = ""
                id          = "/properties/properties/properties/skus"
                type        = "array"
              }
              "skus.$" = {
                description = ""
                id          = "/properties/properties/properties/skus.%24"
                type        = "string"
              }
              value = {
                description = ""
                id          = "/properties/properties/properties/value"
                type        = "integer"
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
      key     = "Checkout Started"
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
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = null
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
      key     = "Signed In"
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
      key     = "User Logged In"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context    = {}
          properties = {}
          traits = {
            properties = {
              email = {
                id   = "/properties/traits/properties/email"
                type = ["string"]
              }
              fname = {
                id   = "/properties/traits/properties/fname"
                type = ["string"]
              }
              lname = {
                id   = "/properties/traits/properties/lname"
                type = ["string"]
              }
              name = {
                id   = "/properties/traits/properties/name"
                type = ["string"]
              }
              phone = {
                id   = "/properties/traits/properties/phone"
                type = ["string"]
              }
            }
            type = "object"
          }
        }
        type = "object"
      })
      key     = null
      type    = "IDENTIFY"
      version = 1
    },
  ]
  type = "LIVE"
}