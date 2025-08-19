import {
  to = segment_function.id-dfn_66881ff4afeb3719fa25478c
  id = "dfn_66881ff4afeb3719fa25478c"
}

resource "segment_function" "id-dfn_66881ff4afeb3719fa25478c" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\tif (event.event !== 'Send SMS') return;\n\tconst { properties } = event || {};\n\tconst { message } = properties || `Hey friend - $${settings.promoText}`;\n\t// const { userId } = event;\n\t// if (!userId) return;\n\n\ttry {\n\t\tconst From = '+18455346456';\n\t\tconst To = '+19177576756';\n\t\tconst Body = message;\n\n\t\tconst body = {\n\t\t\tFrom,\n\t\t\tTo,\n\t\t\tBody\n\t\t};\n\n\t\tconst encodedFrom = encodeURIComponent(From);\n\t\tconst encodedTo = encodeURIComponent(To);\n\t\tconst encodedBody = encodeURIComponent(Body);\n\n\t\tconst requestURL = `https://cogbill-demo-4919.twil.io/sms?From=$${encodedFrom}&To=$${encodedTo}&Body=$${encodedBody}`;\n\t\tconsole.log('Request URL', requestURL);\n\n\t\tawait fetch(requestURL, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\t'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE,OPTIONS',\n\t\t\t\t'Access-Control-Allow-Headers': 'Content-Type',\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t}).then((result, error) => {\n\t\t\tif (error) {\n\t\t\t\tconsole.log(error);\n\t\t\t\treturn;\n\t\t\t}\n\t\t\tconsole.log('successfully sent SMS');\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/5f1bb19a-d664-439e-b20f-0af14e314932.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Promo Text"
      name        = "promoText"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}