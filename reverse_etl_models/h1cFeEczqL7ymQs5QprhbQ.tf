import {
  to = segment_reverse_etl_model.id-h1cFeEczqL7ymQs5QprhbQ
  id = "h1cFeEczqL7ymQs5QprhbQ"
}

resource "segment_reverse_etl_model" "id-h1cFeEczqL7ymQs5QprhbQ" {
  description             = " "
  enabled                 = true
  name                    = "Adopt A Pet Events"
  query                   = " select email,id,userid,event_name from segment_demo.adopt_a_pet_user_events "
  query_identifier_column = "id"
  source_id               = "ucRutMW3Lmsn4fVAWfXsQJ"
}