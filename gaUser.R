
## if not specify table id in gaExamples.R
ga.table.id <- "ga:79915000"

## See the chart of Type of visitor
# Init : 將參數做成 List
query.list <- Init(start.date = "2014-01-01",
                   end.date = "2014-03-15",
                   dimensions = "ga:userType",
                   metrics = "ga:users",
                   max.result = 500,
                   sort = "ga:users",
                   filters = NULL,
                   table.id = ga.table.id)
query.list
ga.query <- QueryBuilder(query.list) ##檢查 list 是否有效 並做成Query Object
ga.data <- GetReportData(ga.query, oath_token)
ga.data
##class(ga.data)
##str(ga.data)
userrow <- rownames(ga.data)
barplot(ga.data$users, col = rainbow(14), 
        names.arg = ga.data$userType,
        xlab = usercol[1], ylab = usercol[2])

pie(ga.data$users, labels = ga.data$userType, col = rainbow(14))

## See the chart of sessionCount and users
query.list <- Init(start.date = "2014-01-01",
                   end.date = "2014-03-15",
                   dimensions = "ga:sessionCount",
                   metrics = "ga:users",
                   max.result = 500,
                   sort = "ga:sessionCount",
                   filters = NULL,
                   table.id = ga.table.id)

ga.query <- QueryBuilder(query.list)
ga.data <- GetReportData(ga.query, oath_token)
ga.data
userrow <- rownames(ga.data)


