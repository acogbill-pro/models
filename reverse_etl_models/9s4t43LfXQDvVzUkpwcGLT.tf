import {
  to = segment_reverse_etl_model.id-9s4t43LfXQDvVzUkpwcGLT
  id = "9s4t43LfXQDvVzUkpwcGLT"
}

resource "segment_reverse_etl_model" "id-9s4t43LfXQDvVzUkpwcGLT" {
  description             = " "
  enabled                 = true
  name                    = "Wildest Events"
  query                   = " select id, email, userid, event_name from segment_demo.wildest_user_events "
  query_identifier_column = "id"
  source_id               = "ucRutMW3Lmsn4fVAWfXsQJ"
}