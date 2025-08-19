import {
  to = segment_reverse_etl_model.id-kkBLt5DPLr8A1Wj9C3Wfyo
  id = "kkBLt5DPLr8A1Wj9C3Wfyo"
}

resource "segment_reverse_etl_model" "id-kkBLt5DPLr8A1Wj9C3Wfyo" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-PETS"
  query                   = "SELECT * FROM ACOGBILL_DEMO.PERSONAS_MARKETING_PROD.IDENTIFIES"
  query_identifier_column = "ID"
  source_id               = "wLoTFxk9DuredsGx6ECmgJ"
}