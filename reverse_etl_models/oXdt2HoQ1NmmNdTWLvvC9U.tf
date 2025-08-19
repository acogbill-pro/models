import {
  to = segment_reverse_etl_model.id-oXdt2HoQ1NmmNdTWLvvC9U
  id = "oXdt2HoQ1NmmNdTWLvvC9U"
}

resource "segment_reverse_etl_model" "id-oXdt2HoQ1NmmNdTWLvvC9U" {
  description             = " "
  enabled                 = true
  name                    = "Favorited Articles"
  query                   = "select _ID, TITLE, CATEGORY, COUNT(*) AS FAV_COUNT from SOLUTIONS_SANDBOX.BLOG_SITE.ARTICLE_FAVORITED WHERE timestamp >= DATEADD(DAY, -1, CURRENT_DATE()) GROUP BY _ID, category, title having COUNT(*) > 5"
  query_identifier_column = "_id"
  source_id               = "cWcsFs1Wme6c2jETf8M6Q"
}