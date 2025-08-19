import {
  to = segment_tracking_plan.id-tp_2HJfid2z7wMlJwGtxptzEtTpcbn
  id = "tp_2HJfid2z7wMlJwGtxptzEtTpcbn"
}

resource "segment_tracking_plan" "id-tp_2HJfid2z7wMlJwGtxptzEtTpcbn" {
  description = "description"
  name        = "Blog Tracking Plan"
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
              ID = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              fullText = {
                type = ["string"]
              }
              priceUSD = {
                type = ["integer"]
              }
              title = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Article Favorited"
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
              ID = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              fullText = {
                type = ["string"]
              }
              priceUSD = {
                type = ["integer"]
              }
              title = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Article Read"
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
              ID = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              fullText = {
                type = ["string"]
              }
              priceUSD = {
                type = ["integer"]
              }
              title = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Article Recommended"
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
              category = {
                description = "Category for articles and products"
                id          = "/properties/properties/properties/category"
                pattern     = "produce"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Viewed All Articles in Category"
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
              category = {}
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Article Category Recommended"
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
              color = {
                description = ""
                id          = "/properties/properties/properties/color"
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
      key     = "Herring"
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
      key     = "Blog Closed"
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
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "User Registered"
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
              Pregnancy = {
                id   = "/properties/traits/properties/Pregnancy"
                type = ["integer"]
              }
              Sleep = {
                id   = "/properties/traits/properties/Sleep"
                type = ["integer"]
              }
              email = {
                id   = "/properties/traits/properties/email"
                type = ["string"]
              }
              favorited_pregnancy_articles = {
                id   = "/properties/traits/properties/favorited_pregnancy_articles"
                type = ["integer"]
              }
              favorited_sleep_articles = {
                id   = "/properties/traits/properties/favorited_sleep_articles"
                type = ["integer"]
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
              recently_favorited = {
                id   = "/properties/traits/properties/recently_favorited"
                type = ["boolean"]
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