import {
  to = segment_reverse_etl_model.id-oBsBzutHE9dP8zjohbMTmh
  id = "oBsBzutHE9dP8zjohbMTmh"
}

resource "segment_reverse_etl_model" "id-oBsBzutHE9dP8zjohbMTmh" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-USER ACTIVITIES"
  query                   = "SELECT SKU,PRICE FROM SOLUTIONS_SANDBOX.MARKETING_EAST.ACCOUNT_PRODUCTS"
  query_identifier_column = "SKU"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}