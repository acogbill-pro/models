import {
  to = segment_reverse_etl_model.id-bZfwaQWk3QXHniicEjPV3B
  id = "bZfwaQWk3QXHniicEjPV3B"
}

resource "segment_reverse_etl_model" "id-bZfwaQWk3QXHniicEjPV3B" {
  description             = "Programatically generated rETL model that is associated with an Engage rETL audience"
  enabled                 = true
  name                    = "Unhappy with First Order - High Value"
  query                   = "WITH ID_GRAPH AS (\n    SELECT \"SEGMENT_ID\", \"CANONICAL_SEGMENT_ID\" FROM (\n        SELECT updates.\"SEGMENT_ID\", updates.\"CANONICAL_SEGMENT_ID\",\n        row_number() OVER(PARTITION BY updates.\"SEGMENT_ID\"\n            ORDER BY updates2.\"CANONICAL_SEGMENT_ID\" IS NOT NULL, updates.\"SEQ\" DESC NULLS FIRST) AS rn\n        FROM \"ACOGBILL_DEMO\".\"COGBILL_MARKETING_PROD\".\"ID_GRAPH_UPDATES\" AS updates\n        LEFT JOIN \"ACOGBILL_DEMO\".\"COGBILL_MARKETING_PROD\".\"ID_GRAPH_UPDATES\" AS updates2 ON updates2.\"SEGMENT_ID\" = updates.\"CANONICAL_SEGMENT_ID\"\n            AND CAST(updates.\"UUID_TS\" AS TIMESTAMP) < (CAST(updates2.\"UUID_TS\" AS TIMESTAMP) + INTERVAL '2 hour')\n            AND updates2.\"CANONICAL_SEGMENT_ID\" <> updates2.\"SEGMENT_ID\"\n            AND updates2.\"CANONICAL_SEGMENT_ID\" <> updates.\"CANONICAL_SEGMENT_ID\"\n    ) AS ORDERED_ID_GRAPH WHERE rn = 1\n), EXTERNAL_ID_MAPPING AS (\n    SELECT \"CANONICAL_SEGMENT_ID\", \"EXTERNAL_ID_TYPE\", \"EXTERNAL_ID_VALUE\" FROM (\n        SELECT COALESCE(id_graph.\"CANONICAL_SEGMENT_ID\", ids.\"SEGMENT_ID\") AS \"CANONICAL_SEGMENT_ID\", ids.\"EXTERNAL_ID_TYPE\", ids.\"EXTERNAL_ID_VALUE\",\n        ROW_NUMBER() OVER (PARTITION BY ids.\"EXTERNAL_ID_HASH\" ORDER BY ids.\"TIMESTAMP\" DESC) AS rn\n        FROM \"ACOGBILL_DEMO\".\"COGBILL_MARKETING_PROD\".\"EXTERNAL_ID_MAPPING_UPDATES\" AS ids\n        LEFT JOIN ID_GRAPH AS id_graph ON id_graph.\"SEGMENT_ID\" = ids.\"SEGMENT_ID\"\n\t\tWHERE \"EXTERNAL_ID_TYPE\" IN ('android.idfa','email','ios.idfa','user_id')\n    ) AS ORDERED_EXTERNAL_ID_MAPPING WHERE rn = 1\n), PROFILE_TRAITS AS (\n    WITH last_profile_traits_updates AS (\n        SELECT *, ROW_NUMBER() OVER(PARTITION BY \"SEGMENT_ID\" ORDER BY CASE WHEN \"SEQ\" IS NULL THEN '0' ELSE \"SEQ\" END DESC) AS last_record\n        FROM \"ACOGBILL_DEMO\".\"COGBILL_MARKETING_PROD\".\"PROFILE_TRAITS_UPDATES\" AS updates\n    ), profile_traits_values AS (\n\t\tSELECT DISTINCT COALESCE(id_graph.\"CANONICAL_SEGMENT_ID\", updates.\"SEGMENT_ID\") AS \"CANONICAL_SEGMENT_ID\",\n\t\t\tLAST_VALUE(updates.\"EMAIL\" IGNORE NULLS)\n\t\t\t\tOVER(PARTITION BY COALESCE(id_graph.\"CANONICAL_SEGMENT_ID\", updates.\"SEGMENT_ID\") ORDER BY updates.\"SEQ\"\n\t\t\t\t\tROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS \"EMAIL\"\n\t\tFROM last_profile_traits_updates AS updates\n\t\tFULL OUTER JOIN ID_GRAPH AS id_graph ON id_graph.\"SEGMENT_ID\" = updates.\"SEGMENT_ID\" \n\t\t\tAND updates.last_record = 1\n\t)\n\tSELECT sids.\"CANONICAL_SEGMENT_ID\",\n\t\tMAX(tra.\"EMAIL\") AS \"EMAIL\"\n\tFROM EXTERNAL_ID_MAPPING sids\n\tLEFT JOIN profile_traits_values AS tra\n\tON sids.\"CANONICAL_SEGMENT_ID\" = tra.\"CANONICAL_SEGMENT_ID\"\n\tWHERE sids.\"EXTERNAL_ID_TYPE\" IN ('android.idfa','email','ios.idfa','user_id')\n\tGROUP BY sids.\"CANONICAL_SEGMENT_ID\"\n), ECG_1 AS (\n\tWITH filtered_query AS (\n\t\tSELECT A.\"CANONICAL_SEGMENT_ID\" AS \"A_CANONICAL_SEGMENT_ID\", B.\"ID\" AS \"B_ID\", B.\"REVIEW\" AS \"B_REVIEW\", B.\"SUMMARY\" AS \"B_SUMMARY\", C.\"SKU\" AS \"C_SKU\", C.\"CATEGORY\" AS \"C_CATEGORY\", C.\"DESCRIPTION\" AS \"C_DESCRIPTION\", C.\"NAME\" AS \"C_NAME\", C.\"PRICE_USD\" AS \"C_PRICE_USD\"\n\t\tFROM \"ACOGBILL_DEMO\".\"SHOP_SITE\".\"PRODUCT_CATALOG\" C\n\t\tINNER JOIN \"ACOGBILL_DEMO\".\"SHOP_ENRICHED\".\"REVIEWS_WITH_SENTIMENT\" B ON B.\"PRODUCT_SKU\" = C.\"SKU\"\n\t\tINNER JOIN EXTERNAL_ID_MAPPING A ON A.\"EXTERNAL_ID_TYPE\" = 'user_id' AND A.\"EXTERNAL_ID_VALUE\" = CAST(B.\"USER_ID\" AS VARCHAR)\n\t\tWHERE ((B.\"SENTIMENT_SCORE\" < 0) AND (C.\"PRICE_USD\" > 20))\n\t)\n\tSELECT * FROM filtered_query\n), ECG_1_SEGMENT_ID AS (\n\tSELECT \"A_CANONICAL_SEGMENT_ID\" AS \"CANONICAL_SEGMENT_ID\" FROM ECG_1 GROUP BY \"A_CANONICAL_SEGMENT_ID\"\n), EC_1_SEGMENT_ID AS (\n\tSELECT COALESCE(B.\"CANONICAL_SEGMENT_ID\", EV.\"SEGMENT_ID\") AS \"CANONICAL_SEGMENT_ID\"\n\tFROM \"ACOGBILL_DEMO\".\"COGBILL_MARKETING_PROD\".\"ORDER_COMPLETED\" EV\n\tLEFT JOIN ID_GRAPH B ON EV.\"SEGMENT_ID\" = B.\"SEGMENT_ID\"\n\tGROUP BY COALESCE(B.\"CANONICAL_SEGMENT_ID\", EV.\"SEGMENT_ID\") HAVING COUNT(*) = 1\n), PROFILE_FILTER AS (\n\tSELECT \"CANONICAL_SEGMENT_ID\" FROM PROFILE_TRAITS PT\n\tWHERE (((\"CANONICAL_SEGMENT_ID\" IN (SELECT \"CANONICAL_SEGMENT_ID\" FROM ECG_1_SEGMENT_ID)) or (\"CANONICAL_SEGMENT_ID\" IN (SELECT \"CANONICAL_SEGMENT_ID\" FROM EC_1_SEGMENT_ID))) and (PT.\"EMAIL\" IS NOT NULL))\n), ECG_1_FILTERED AS (\n\tSELECT * FROM ECG_1 WHERE \"A_CANONICAL_SEGMENT_ID\" IN (SELECT \"CANONICAL_SEGMENT_ID\" FROM PROFILE_FILTER)\n)\nSELECT DISTINCT * FROM (\n\tSELECT CONCAT('0_stats_match_id_', CAST(CURRENT_TIMESTAMP AS VARCHAR)) AS \"MATCHID\", 'STATS_CANONICAL_SEGMENT_ID' AS \"CANONICAL_SEGMENT_ID\", NULL AS \"1_REVIEW\", NULL AS \"1_SUMMARY\", NULL AS \"2_CATEGORY\", NULL AS \"2_DESCRIPTION\", NULL AS \"2_NAME\", NULL AS \"2_PRICE_USD\", CONCAT('{', \n'\"empty_placeholder\": 0'\n, '}') AS \"STATS\"\nUNION ALL\n\tSELECT \"CANONICAL_SEGMENT_ID\" as \"MATCHID\", \"CANONICAL_SEGMENT_ID\", NULL AS \"1_REVIEW\", NULL AS \"1_SUMMARY\", NULL AS \"2_CATEGORY\", NULL AS \"2_DESCRIPTION\", NULL AS \"2_NAME\", NULL AS \"2_PRICE_USD\", NULL AS \"STATS\"\n\tFROM PROFILE_FILTER\n\tUNION ALL\n\tSELECT ARRAY_TO_STRING([\"A_CANONICAL_SEGMENT_ID\", '2', REPLACE(CAST(\"B_ID\" AS VARCHAR), ':', '::'), REPLACE(CAST(\"C_SKU\" AS VARCHAR), ':', '::')], ':') as \"MATCHID\", \"A_CANONICAL_SEGMENT_ID\" as CANONICAL_SEGMENT_ID, \"B_REVIEW\", \"B_SUMMARY\", \"C_CATEGORY\", \"C_DESCRIPTION\", \"C_NAME\", \"C_PRICE_USD\", NULL AS \"STATS\"\n\tFROM ECG_1_FILTERED WHERE \"C_SKU\" IS NOT NULL\n\tUNION ALL\n\tSELECT ARRAY_TO_STRING([\"A_CANONICAL_SEGMENT_ID\", '1', REPLACE(CAST(\"B_ID\" AS VARCHAR), ':', '::')], ':') as \"MATCHID\", \"A_CANONICAL_SEGMENT_ID\" as CANONICAL_SEGMENT_ID, \"B_REVIEW\", \"B_SUMMARY\", NULL, NULL, NULL, NULL, NULL AS \"STATS\"\n\tFROM ECG_1_FILTERED WHERE \"B_ID\" IS NOT NULL\n) AS DEDUPED_PROJECTIONS"
  query_identifier_column = "matchId"
  schedule_config         = "{}"
  schedule_strategy       = "MANUAL"
  source_id               = "wLoTFxk9DuredsGx6ECmgJ"
}