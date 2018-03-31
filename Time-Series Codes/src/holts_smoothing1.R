install.packages("forecast")
require(forecast)

#We can provide the path for csv file
data <- read.csv("/path/to/csvfile")
#We can use the AirPassengers data which is present in R as default as 
#data("AirPassengers")
#data <- AirPassengers

#To convert the data into time series object(if it is not)
#If the data has seasonality which is less than 24,
data_ts <- ts(data$column_name , frequency = 12)
fit <-ets(data_ts, model = "ZZZ")
result <- forecast(fit,h = 20)
plot(result)

