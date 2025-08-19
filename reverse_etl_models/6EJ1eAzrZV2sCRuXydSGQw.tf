import {
  to = segment_reverse_etl_model.id-6EJ1eAzrZV2sCRuXydSGQw
  id = "6EJ1eAzrZV2sCRuXydSGQw"
}

resource "segment_reverse_etl_model" "id-6EJ1eAzrZV2sCRuXydSGQw" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-CARTS"
  query                   = "SELECT ID,NAME FROM SOLUTIONS_SANDBOX.MARKETING_EAST.CARTS"
  query_identifier_column = "ID"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}