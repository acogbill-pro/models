import {
  to = segment_reverse_etl_model.id-75ZZgMAppYXrieRdeu6wqS
  id = "75ZZgMAppYXrieRdeu6wqS"
}

resource "segment_reverse_etl_model" "id-75ZZgMAppYXrieRdeu6wqS" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-JOURNEYS"
  query                   = "SELECT * FROM ACOGBILL_DEMO.MESSAGING_SERVICE.START_JOURNEY"
  query_identifier_column = "JOURNEY_ID"
  source_id               = "wLoTFxk9DuredsGx6ECmgJ"
}