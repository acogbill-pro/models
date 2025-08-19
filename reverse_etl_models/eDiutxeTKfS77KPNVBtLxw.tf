import {
  to = segment_reverse_etl_model.id-eDiutxeTKfS77KPNVBtLxw
  id = "eDiutxeTKfS77KPNVBtLxw"
}

resource "segment_reverse_etl_model" "id-eDiutxeTKfS77KPNVBtLxw" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-ORDERS"
  query                   = "SELECT * FROM SOLUTIONS_SANDBOX.MARKETING_EAST.ORDERS"
  query_identifier_column = "ORDERID"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}