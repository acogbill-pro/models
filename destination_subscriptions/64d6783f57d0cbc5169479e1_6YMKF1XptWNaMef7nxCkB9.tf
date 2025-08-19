import {
  to = segment_destination_subscription.id-64d6783f57d0cbc5169479e1_6YMKF1XptWNaMef7nxCkB9
  id = "64d6783f57d0cbc5169479e1:6YMKF1XptWNaMef7nxCkB9"
}

resource "segment_destination_subscription" "id-64d6783f57d0cbc5169479e1_6YMKF1XptWNaMef7nxCkB9" {
  action_id            = "5DAMQ5qUaF2rZoyVNiReCa"
  destination_id       = "64d6783f57d0cbc5169479e1"
  enabled              = true
  model_id             = null
  name                 = "Contact"
  reverse_etl_schedule = null
  settings = jsonencode({
    account_id = "001Hu00002wb9K0IAI"
    batch_size = "5000"
    customFields = {
      Anonymous_ID__c = {
        "@path" = "$.anonymousId"
      }
      FirstName = {
        "@path" = "$.traits.fname"
      }
      LastName = {
        "@path" = "$.traits.lname"
      }
      User_ID__c = {
        "@path" = "$.userId"
      }
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = false
    first_name = {
      "@path" = "$.traits.fname"
    }
    last_name = {
      "@path" = "$.traits.lname"
    }
    mailing_city = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.city"
        }
        exists = {
          "@path" = "$.traits.address.city"
        }
        then = {
          "@path" = "$.traits.address.city"
        }
      }
    }
    mailing_country = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.country"
        }
        exists = {
          "@path" = "$.traits.address.country"
        }
        then = {
          "@path" = "$.traits.address.country"
        }
      }
    }
    mailing_postal_code = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.postal_code"
        }
        exists = {
          "@path" = "$.traits.address.postal_code"
        }
        then = {
          "@path" = "$.traits.address.postal_code"
        }
      }
    }
    mailing_state = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.state"
        }
        exists = {
          "@path" = "$.traits.address.state"
        }
        then = {
          "@path" = "$.traits.address.state"
        }
      }
    }
    mailing_street = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.street"
        }
        exists = {
          "@path" = "$.traits.address.street"
        }
        then = {
          "@path" = "$.traits.address.street"
        }
      }
    }
    operation             = "upsert"
    recordMatcherOperator = "OR"
    traits = {
      Email = {
        "@path" = "$.traits.email"
      }
    }
  })
  trigger = "type = \"identify\""
}