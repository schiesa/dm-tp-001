library(mongolite)
m <- mongo("users_mongo_covid19", url = "mongodb://127.0.0.1:27017/DMUBA")
print(m)

#https://jeroen.github.io/mongolite/query-data.html#query-syntax
m$count('{}')

verificados<- m$find('{"verified" : true}')
head(verificados)
