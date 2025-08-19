import {
  to = segment_reverse_etl_model.id-8akZ9a4ejF4BvxNdRZJRDn
  id = "8akZ9a4ejF4BvxNdRZJRDn"
}

resource "segment_reverse_etl_model" "id-8akZ9a4ejF4BvxNdRZJRDn" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-USERS"
  query                   = "SELECT * FROM ACOGBILL_DEMO.PERSONAS_MARKETING_PROD.USERS"
  query_identifier_column = "ID"
  source_id               = "wLoTFxk9DuredsGx6ECmgJ"
}