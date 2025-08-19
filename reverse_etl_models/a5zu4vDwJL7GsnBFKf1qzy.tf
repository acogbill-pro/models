import {
  to = segment_reverse_etl_model.id-a5zu4vDwJL7GsnBFKf1qzy
  id = "a5zu4vDwJL7GsnBFKf1qzy"
}

resource "segment_reverse_etl_model" "id-a5zu4vDwJL7GsnBFKf1qzy" {
  description             = " "
  enabled                 = false
  name                    = "Users with Email"
  query                   = "select id, email, 1 as DWH_Validated\nfrom\n  SOLUTIONS_SANDBOX.PERSONAS_MARKETING_EAST.users\nwhere\n  email IS NOT NULL"
  query_identifier_column = "ID"
  source_id               = "cWcsFs1Wme6c2jETf8M6Q"
}