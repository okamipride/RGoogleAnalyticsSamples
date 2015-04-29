## Oath
load("oath_token")
profile <- "xxx"
ValidateToken(oath_token)
## Set default table or select from profile (gaExample for how to select profile)
ga.table.id = "ga:79915000"
ga.dimensions <- c("ga:eventCategory", "ga:eventLabel")
ga.filters <- "ga:eventCategory==search"

query.list <- Init(start.date = "2014-01-01",
                   end.date = "2014-03-15",
                   dimensions = ga.dimensions,
                   metrics = "ga:eventValue",
                   max.result = 100,
                   sort = NULL,
                   filters = ga.filters,
                   table.id = ga.table.id)


query.list
ga.query <- QueryBuilder(query.list)
ga.query
ga.data <- GetReportData(ga.query, oath_token)
ga.data

