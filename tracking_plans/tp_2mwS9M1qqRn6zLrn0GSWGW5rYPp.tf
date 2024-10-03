import {
  to = segment_tracking_plan.id-tp_2mwS9M1qqRn6zLrn0GSWGW5rYPp
  id = "tp_2mwS9M1qqRn6zLrn0GSWGW5rYPp"
}

resource "segment_tracking_plan" "id-tp_2mwS9M1qqRn6zLrn0GSWGW5rYPp" {
  description = null
  name        = "User Profile"
  rules = [
    {
      json_schema = "{\"$schema\":\"http://json-schema.org/draft-07/schema#\",\"properties\":{\"context\":{},\"properties\":{\"properties\":{\"userId\":{\"description\":\"\",\"id\":\"/properties/properties/properties/userId\",\"type\":\"string\"}},\"required\":[\"userId\"],\"type\":\"object\"},\"traits\":{}},\"required\":[\"properties\"],\"type\":\"object\"}"
      key         = "Property Library Rule"
      type        = "TRACK"
      version     = 1
    },
  ]
  type = "PROPERTY_LIBRARY"
}