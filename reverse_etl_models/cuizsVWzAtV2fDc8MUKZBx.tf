import {
  to = segment_reverse_etl_model.id-cuizsVWzAtV2fDc8MUKZBx
  id = "cuizsVWzAtV2fDc8MUKZBx"
}

resource "segment_reverse_etl_model" "id-cuizsVWzAtV2fDc8MUKZBx" {
  description             = " "
  enabled                 = true
  name                    = "KDP Profile Data"
  query                   = "Select email, userid,  first_name, last_name, pet_name, number_of_dogs, number_of_cats, has_visited_wildest, likelihood_to_adopt, has_talked_with_vet,\nnumber_of_children_in_home,Pet_Allergies,Pet_Hair_Type,Pet_Gotcha_Day, Pet_Breed_Category, kin_subscription_id \nfrom segment_demo.kinship_customers"
  query_identifier_column = "userid"
  source_id               = "ucRutMW3Lmsn4fVAWfXsQJ"
}