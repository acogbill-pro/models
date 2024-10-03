import {
  to = segment_tracking_plan.id-tp_2mwRldjp3NNhVe6KGuMwXZILhmb
  id = "tp_2mwRldjp3NNhVe6KGuMwXZILhmb"
}

resource "segment_tracking_plan" "id-tp_2mwRldjp3NNhVe6KGuMwXZILhmb" {
  description = null
  name        = "User Auth"
  rules = [
    {
      json_schema = "{\"$schema\":\"http://json-schema.org/draft-07/schema#\",\"properties\":{\"context\":{},\"properties\":{\"properties\":{\"userId\":{\"description\":\"\",\"id\":\"/properties/properties/properties/userId\",\"type\":\"string\"}},\"required\":[\"userId\"],\"type\":\"object\"},\"traits\":{\"type\":\"object\"}},\"required\":[\"properties\"],\"type\":\"object\"}"
      key         = "User Login"
      type        = "TRACK"
      version     = 1
    },
  ]
  type = "RULE_LIBRARY"
}