import {
  to = segment_reverse_etl_model.id-wXXEQRpqwDKRjmu1GAS9RU
  id = "wXXEQRpqwDKRjmu1GAS9RU"
}

resource "segment_reverse_etl_model" "id-wXXEQRpqwDKRjmu1GAS9RU" {
  description             = " "
  enabled                 = true
  name                    = "Modeled Scores by User"
  query                   = "select * from (select id, uniform(0, 100, RANDOM()) as ltv_score, 'gold' as consumer_status\nfrom\n  SOLUTIONS_SANDBOX.PERSONAS_MARKETING_EAST.users\nwhere\n  id IS NOT NULL\ngroup by 1) where ltv_score > 90"
  query_identifier_column = "id"
  source_id               = "cWcsFs1Wme6c2jETf8M6Q"
}