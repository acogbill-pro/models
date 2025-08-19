import {
  to = segment_destination_subscription.id-64d6783f57d0cbc5169479e1_gdmVrAeJ88WWP7Nii4eUVL
  id = "64d6783f57d0cbc5169479e1:gdmVrAeJ88WWP7Nii4eUVL"
}

resource "segment_destination_subscription" "id-64d6783f57d0cbc5169479e1_gdmVrAeJ88WWP7Nii4eUVL" {
  action_id            = "52yB9Xs7pWZ3VcsSqjpFFv"
  destination_id       = "64d6783f57d0cbc5169479e1"
  enabled              = true
  model_id             = null
  name                 = "Custom Object"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = "5000"
    bulkUpsertExternalId = {
      externalIdName  = "OrderReferenceNumber"
      externalIdValue = "properties.orderID"
    }
    customFields = {
      AccountId = "001Hu00002wb9K0IAI"
      EffectiveDate = {
        "@path" = "$.timestamp"
      }
      OrderReferenceNumber = {
        "@path" = "$.properties.orderID"
      }
      Status = "Draft"
      User_ID__c = {
        "@path" = "$.userId"
      }
    }
    customObjectName      = "Order"
    enable_batching       = false
    operation             = "upsert"
    recordMatcherOperator = "OR"
    traits = {
      OrderReferenceNumber = {
        "@path" = "$.properties.orderID"
      }
    }
  })
  trigger = "event = \"Order Completed\""
}