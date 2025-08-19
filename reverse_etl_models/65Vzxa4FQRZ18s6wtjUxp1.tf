import {
  to = segment_reverse_etl_model.id-65Vzxa4FQRZ18s6wtjUxp1
  id = "65Vzxa4FQRZ18s6wtjUxp1"
}

resource "segment_reverse_etl_model" "id-65Vzxa4FQRZ18s6wtjUxp1" {
  description             = "Programatically generated rETL model that is associated with an Engage rETL audience"
  enabled                 = true
  name                    = "Example Linked Audience"
  query                   = "WITH ID_GRAPH AS (\n    SELECT updates.segment_id, updates.canonical_segment_id\n    FROM \"SOLUTIONS_SANDBOX\".\"MARKETING_EAST\".ID_GRAPH_UPDATES AS updates\n    LEFT JOIN \"SOLUTIONS_SANDBOX\".\"MARKETING_EAST\".ID_GRAPH_UPDATES AS updates2 ON updates2.segment_id = updates.canonical_segment_id\n        AND CAST(updates.uuid_ts AS DATETIME) < DATEADD(HOUR, 2, updates2.UUID_TS)\n        AND updates2.canonical_segment_id <> updates2.segment_id\n        AND updates2.canonical_segment_id <> updates.canonical_segment_id\n), EXTERNAL_ID_MAPPING AS (\n    SELECT COALESCE(id_graph.canonical_segment_id,ids.segment_id) AS canonical_segment_id, ids.external_id_type, ids.external_id_value\n    FROM \"SOLUTIONS_SANDBOX\".\"MARKETING_EAST\".EXTERNAL_ID_MAPPING_UPDATES AS ids\n    LEFT JOIN ID_GRAPH AS id_graph ON id_graph.segment_id = ids.segment_id\n), filtered_query AS (\n  SELECT A.\"CANONICAL_SEGMENT_ID\" AS \"A_CANONICAL_SEGMENT_ID\", B.\"ID\" AS \"B_ID\"\n  FROM \"SOLUTIONS_SANDBOX\".\"MARKETING_EAST\".\"ACCOUNTS\" B\n  INNER JOIN EXTERNAL_ID_MAPPING A ON A.\"EXTERNAL_ID_VALUE\" = B.\"EMAIL_ID\" AND A.\"EXTERNAL_ID_TYPE\" = 'email'\n)\nSELECT DISTINCT CONCAT_WS(':', REPLACE(\"A_CANONICAL_SEGMENT_ID\", ':', '::'), REPLACE(\"B_ID\", ':', '::')) as matchId\nFROM filtered_query\nUNION ALL\nSELECT DISTINCT CONCAT_WS(':', REPLACE(\"A_CANONICAL_SEGMENT_ID\", ':', '::')) as matchId\nFROM filtered_query"
  query_identifier_column = "matchId"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}