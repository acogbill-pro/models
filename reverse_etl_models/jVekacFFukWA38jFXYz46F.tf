import {
  to = segment_reverse_etl_model.id-jVekacFFukWA38jFXYz46F
  id = "jVekacFFukWA38jFXYz46F"
}

resource "segment_reverse_etl_model" "id-jVekacFFukWA38jFXYz46F" {
  description             = "my_first_dbt_model"
  enabled                 = true
  name                    = "Reviews (DBT)"
  query                   = "/*\n    Welcome to your first dbt model!\n    Did you know that you can also configure models directly within SQL files?\n    This will override configurations stated in dbt_project.yml\n\n    Try changing \"table\" to \"view\" below\n*/\n\n\n\nwith source_data as (\n\n    select 1 as id\n    union all\n    select null as id\n\n)\n\nselect *\nfrom source_data\n\n/*\n    Uncomment the line below to remove records with null `id` values\n*/\n\nwhere id is not null"
  query_identifier_column = "generated_id"
  schedule_config         = "{}"
  schedule_strategy       = ""
  source_id               = "6ug89BNDp2YUE5FDRbXJXc"
}