import {
  to = segment_reverse_etl_model.id-2hpJqufZuw4q27i9XZTYHP
  id = "2hpJqufZuw4q27i9XZTYHP"
}

resource "segment_reverse_etl_model" "id-2hpJqufZuw4q27i9XZTYHP" {
  description             = " "
  enabled                 = true
  name                    = "Event Table (transactions)"
  query                   = "select * from segment_demo.orders"
  query_identifier_column = "rewardid"
  source_id               = "ucRutMW3Lmsn4fVAWfXsQJ"
}