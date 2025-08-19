import {
  to = segment_reverse_etl_model.id-bPhbTBqrdsBgtsqdswj2s6
  id = "bPhbTBqrdsBgtsqdswj2s6"
}

resource "segment_reverse_etl_model" "id-bPhbTBqrdsBgtsqdswj2s6" {
  description             = " "
  enabled                 = false
  name                    = "Model Scores v2"
  query                   = "select id, email, 1 as DWH_Validated\nfrom\n  SOLUTIONS_SANDBOX.PERSONAS_MARKETING_EAST.users\nwhere\n  email IS NOT NULL"
  query_identifier_column = "id"
  source_id               = "cWcsFs1Wme6c2jETf8M6Q"
}