install.packages("forecast")
require(forecast)

#We can provide the path for csv file
data <- read.csv("/path/to/csvfile")
#We can use the AirPassengers data which is present in R as default as 
#data("AirPassengers")
#data <- AirPassengers

#To convert the data into time series object
#If the data has seasonality which is more than 24,
data_ts <- msts(data$column_name , frequency = 8640)
result <-stlf(data_ts, h = 1000)
plot(result)

