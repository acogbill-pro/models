import {
  to = segment_reverse_etl_model.id-jy21svef1eA4HjfmJLBwJz
  id = "jy21svef1eA4HjfmJLBwJz"
}

resource "segment_reverse_etl_model" "id-jy21svef1eA4HjfmJLBwJz" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-DOMAINS"
  query                   = "SELECT ID,AFFILIATE_ACCOUNT_NAME,TIER FROM SOLUTIONS_SANDBOX.MARKETING_EAST.AFFILIATE_ACCOUNT"
  query_identifier_column = "ID"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}