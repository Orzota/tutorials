install.packages("forecast")
require(forecast)
#We can provide the path for csv file
data <- read.csv("/path/to/csvfile")
#We can use the AirPassengers data which is present in R as default as 
#data("AirPassengers")
#data <- AirPassengers
result <- ses(data,alpha=0.6,initial="simple", h=10)
plot(result)

