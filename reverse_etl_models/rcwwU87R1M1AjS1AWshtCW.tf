import {
  to = segment_reverse_etl_model.id-rcwwU87R1M1AjS1AWshtCW
  id = "rcwwU87R1M1AjS1AWshtCW"
}

resource "segment_reverse_etl_model" "id-rcwwU87R1M1AjS1AWshtCW" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-ACCOUNTS"
  query                   = "SELECT ID,ADDRESS_STATE,EMAIL,NUM_EMPLOYEES,REGION,STATUS,TABLE_ID,TIER FROM SOLUTIONS_SANDBOX.MARKETING_EAST.ACCOUNTS"
  query_identifier_column = "ID"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}