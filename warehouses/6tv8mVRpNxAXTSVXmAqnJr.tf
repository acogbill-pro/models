import {
  to = segment_warehouse.id-6tv8mVRpNxAXTSVXmAqnJr
  id = "6tv8mVRpNxAXTSVXmAqnJr"
}

resource "segment_warehouse" "id-6tv8mVRpNxAXTSVXmAqnJr" {
  enabled = false
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "Snowflake"
  settings = jsonencode({
    account    = "pjzskba-iob63433"
    auth_type  = "password_auth"
    ciphertext = "AQICAHhDxiwP/vgvvqzyHLPVxM5a7lEjWTT0CiiQB+LPknr0YAE8cJSgXla/QF5QNhQC7OQ1AAAAdjB0BgkqhkiG9w0BBwagZzBlAgEAMGAGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMr3gWq6sgFGgD2q3/AgEQgDN2wY+abF/7Rh3YsHoG6USTKsoGTnkdTycaSDZbwbQ1tTS41aiqLNOfhDdcKLQQz3y65EQ="
    database   = "SEGMENT_EVENTS"
    encrypted  = true
    username   = "SEGMENT_USER"
    warehouse  = "COGBILL_DEMO"
  })
}