import {
  to = segment_function.id-dfn_633f0c81d054040eceeebde6
  id = "dfn_633f0c81d054040eceeebde6"
}

resource "segment_function" "id-dfn_633f0c81d054040eceeebde6" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n\tconsole.log(JSON.stringify(event));\n\n\t// Only handling 'Order Completed' events\n\tif (event.event == settings.triggeringEventName) {\n\t\tconsole.log(\"We've received your request!\");\n\t\t// const Subject = \"Hello, we've received your request!\";\n\t\tevent.properties.email = event.userId;\n\n\t\tawait sendEmail(\n\t\t\t{\n\t\t\t\tto: event.userId,\n\t\t\t\tsubject: settings.emailSubject,\n\t\t\t\tdynamicTemplateData: event.properties\n\t\t\t},\n\t\t\tsettings\n\t\t);\n\t}\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n\n/**\n * Sends Email with SendGrid\n *\n * https://docs.sendgrid.com/for-developers/sending-email/api-getting-started\n * https://docs.sendgrid.com/api-reference/how-to-use-the-sendgrid-v3-api/authentication\n *\n */\nasync function sendEmail(params, settings) {\n\tconst endpoint = 'https://api.sendgrid.com/v3/mail/send';\n\tlet response;\n\tlet body = {\n\t\tpersonalizations: [\n\t\t\t{\n\t\t\t\tto: [{ email: params.to }],\n\t\t\t\tsubject: params.subject,\n\t\t\t\tdynamic_template_data: params.dynamicTemplateData\n\t\t\t}\n\t\t],\n\t\tfrom: { email: settings.from },\n\t\ttemplate_id: settings.sendGridDynamicTemplateId\n\t};\n\n\ttry {\n\t\tresponse = await fetch(endpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Bearer $${settings.sendGridApiKey}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify(body)\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tconsole.log(JSON.stringify(params));\n\tconsole.log(JSON.stringify(settings));\n\tconsole.log(JSON.stringify(response.statusText));\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/fbf96509-bb42-47f6-933a-aed844cc7525.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Email Subject"
      name        = "emailSubject"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "From"
      name        = "from"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "SendGrid API Key"
      name        = "sendGridApiKey"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "SendGrid Dynamic Template ID"
      name        = "sendGridDynamicTemplateId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Triggering Event Name"
      name        = "triggeringEventName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}