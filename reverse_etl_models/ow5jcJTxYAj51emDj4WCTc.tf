import {
  to = segment_reverse_etl_model.id-ow5jcJTxYAj51emDj4WCTc
  id = "ow5jcJTxYAj51emDj4WCTc"
}

resource "segment_reverse_etl_model" "id-ow5jcJTxYAj51emDj4WCTc" {
  description             = " "
  enabled                 = true
  name                    = "The Kin Events"
  query                   = "Select email, id, event_name, userid from segment_demo.kin_user_events "
  query_identifier_column = "id"
  source_id               = "ucRutMW3Lmsn4fVAWfXsQJ"
}