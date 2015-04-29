load("oath_token") 
profile <- "xxx"
ValidateToken(oath_token) ## 檢查 token 是否有效
profile <- GetProfiles(oath_token) ## 獲取使用者的所有 profiles
profile

ga.table.id <- "ga:79915000" ## Default gaid
chooseTable <- function() ## Let User to select profile
{ 
  n <- readline(prompt="Enter index ")
  return(as.integer(n))
}
selectTable <- chooseTable()
ga.table.id <- paste("ga:",profile$id[selectTable], sep="")
ga.table.id
