library(RGoogleAnalytics)

client.id <- "XXXXXXXXXXXXXXXXXX" ## client id from Google Developer Consol
client.secret <- "YYYYYYYYYYYYYYYYYYYYYYYYYY" ## client secret from Google Developer Consol
oath_token <- Auth(client.id=client.id, client.secret =  client.secret)
save(oath_token, file="oath_token")
