## if not specify table id in gaExamples.R
ga.table.id <- "ga:79915000"
##pie(ga.data$users, labels = ga.data$userType, col = rainbow(14))
##barplot(ga.data$bounces, col = rainbow(14), xlab = "bounces", ylab = "Numbers")


## Total number of sessions 
query.list <- Init(start.date = "2014-01-01",
                   end.date = "2014-03-15",
                   dimensions = NULL,
                   metrics = "ga:sessions",
                   max.result = 500,
                   sort = "ga:sessions",
                   filters = NULL,
                   table.id = ga.table.id)

ga.query <- QueryBuilder(query.list)
ga.data <- GetReportData(ga.query, oath_token)
ga.data
barplot(ga.data$sessions, col = rainbow(14), 
        xlab = "Sessions", ylab = "Numbers")

query.list <- Init(start.date = "2014-01-01",
                   end.date = "2014-03-15",
                   dimensions = NULL,
                   metrics = "ga:pageLoadTime",
                   max.result = 500,
                   sort = "ga:pageLoadTime",
                   filters = NULL,
                   table.id = ga.table.id)

ga.query <- QueryBuilder(query.list)
ga.data <- GetReportData(ga.query, oath_token)
ga.data
num_count <- as.numeric(ga.data$sessionCount)
plot(num_count, ga.data$users, col = rainbow(14))
pie(ga.data$users, labels = num_count, col = rainbow(14)) 


