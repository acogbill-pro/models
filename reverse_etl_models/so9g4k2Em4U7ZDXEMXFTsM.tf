import {
  to = segment_reverse_etl_model.id-so9g4k2Em4U7ZDXEMXFTsM
  id = "so9g4k2Em4U7ZDXEMXFTsM"
}

resource "segment_reverse_etl_model" "id-so9g4k2Em4U7ZDXEMXFTsM" {
  description             = "Programatically generated rETL model that is associated with an Engage rETL audience"
  enabled                 = true
  name                    = "Test"
  query                   = "WITH ID_GRAPH AS (\n    SELECT updates.segment_id, updates.canonical_segment_id\n    FROM \"MARKETING_EAST\".ID_GRAPH_UPDATES AS updates\n    LEFT JOIN \"MARKETING_EAST\".ID_GRAPH_UPDATES AS updates2 ON updates2.segment_id = updates.canonical_segment_id\n        AND CAST(updates.uuid_ts AS DATETIME) < DATEADD(HOUR, 2, updates2.UUID_TS)\n        AND updates2.canonical_segment_id <> updates2.segment_id\n        AND updates2.canonical_segment_id <> updates.canonical_segment_id\n), EXTERNAL_ID_MAPPING AS (\n    SELECT COALESCE(id_graph.canonical_segment_id,ids.segment_id) AS canonical_segment_id, ids.external_id_type, ids.external_id_value\n    FROM \"MARKETING_EAST\".EXTERNAL_ID_MAPPING_UPDATES AS ids\n    LEFT JOIN ID_GRAPH AS id_graph ON id_graph.segment_id = ids.segment_id\n), filtered_query AS (\n  SELECT A.\"CANONICAL_SEGMENT_ID\" AS \"A_CANONICAL_SEGMENT_ID\", B.\"ID\" AS \"B_ID\", C.\"ID\" AS \"C_ID\", E.\"ID\" AS \"E_ID\", D.\"SKU\" AS \"D_SKU\"\n  FROM \"MARKETING_EAST\".\"PRODUCTS\" D\n  INNER JOIN \"MARKETING_EAST\".\"CART_PRODUCTS\" E ON E.\"PRODUCT_ID\" = D.\"SKU\"\n  INNER JOIN \"MARKETING_EAST\".\"CARTS\" C ON C.\"ID\" = E.\"CART_ID\"\n  INNER JOIN \"MARKETING_EAST\".\"ACCOUNTS\" B ON B.\"ID\" = C.\"ACCOUNT_ID\"\n  INNER JOIN EXTERNAL_ID_MAPPING A ON A.\"EXTERNAL_ID_VALUE\" = B.\"EMAIL_ID\" AND A.\"EXTERNAL_ID_TYPE\" = 'email'\n  WHERE (D.\"SKU\" = 'SKU123')\n)\nSELECT DISTINCT \"A_CANONICAL_SEGMENT_ID\" || ':' || \"B_ID\" || ':' || \"C_ID\" || ':' || \"E_ID\" || ':' || \"D_SKU\" as matchId\nFROM filtered_query\nUNION ALL\nSELECT DISTINCT \"A_CANONICAL_SEGMENT_ID\" || ':' || \"B_ID\" || ':' || \"C_ID\" as matchId\nFROM filtered_query\nUNION ALL\nSELECT DISTINCT \"A_CANONICAL_SEGMENT_ID\" || ':' || \"B_ID\" as matchId\nFROM filtered_query\nUNION ALL\nSELECT DISTINCT \"A_CANONICAL_SEGMENT_ID\" as matchId\nFROM filtered_query"
  query_identifier_column = "matchId"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}