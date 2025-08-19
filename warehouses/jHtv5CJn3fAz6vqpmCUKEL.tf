import {
  to = segment_warehouse.id-jHtv5CJn3fAz6vqpmCUKEL
  id = "jHtv5CJn3fAz6vqpmCUKEL"
}

resource "segment_warehouse" "id-jHtv5CJn3fAz6vqpmCUKEL" {
  enabled = false
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "ARCH - Snowflake SEG"
  settings = jsonencode({
    account    = "segment"
    auth_type  = "password_auth"
    ciphertext = "AQICAHhDxiwP/vgvvqzyHLPVxM5a7lEjWTT0CiiQB+LPknr0YAH5PF2E0pmUczfB/W13a4pqAAAAaDBmBgkqhkiG9w0BBwagWTBXAgEAMFIGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMOF9BJm+3QsNc9Y2yAgEQgCWBWqUsen+dTrZ8Bs7FB9Z1VZ0grqZL+kyUt91XF3bcveCeQeQE"
    database   = "SOLUTIONS_SANDBOX"
    encrypted  = true
    username   = "SOLUTIONS_ENG"
    warehouse  = "SOLUTIONS"
  })
}