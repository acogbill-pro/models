import {
  to = segment_tracking_plan.id-tp_2ixwOTTez7qTwXobsjcefC2O9YU
  id = "tp_2ixwOTTez7qTwXobsjcefC2O9YU"
}

resource "segment_tracking_plan" "id-tp_2ixwOTTez7qTwXobsjcefC2O9YU" {
  description = "description"
  name        = "Customer Messaging"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              message = {
                id   = "/properties/properties/properties/message"
                type = ["string"]
              }
            }
            required = ["message"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Send SMS"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}