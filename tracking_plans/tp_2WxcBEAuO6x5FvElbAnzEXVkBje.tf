import {
  to = segment_tracking_plan.id-tp_2WxcBEAuO6x5FvElbAnzEXVkBje
  id = "tp_2WxcBEAuO6x5FvElbAnzEXVkBje"
}

resource "segment_tracking_plan" "id-tp_2WxcBEAuO6x5FvElbAnzEXVkBje" {
  description = "description"
  name        = "Owner Tracking"
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
                type = ["integer"]
              }
              age = {
                type = ["integer"]
              }
              breed = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              description = {
                type = ["string"]
              }
              dietary = {
                items = {
                  type = "string"
                }
                type = "array"
              }
              gender = {
                type = ["string"]
              }
              location = {
                type = ["string"]
              }
              name = {
                type = ["string"]
              }
              size = {
                type = ["string"]
              }
              species = {
                type = ["string"]
              }
              subCategory = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Owner Confirmed"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}