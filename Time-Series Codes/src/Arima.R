install.packages("forecast")
require(forecast)

#We can provide the path for csv file
data <- read.csv("/path/to/csvfile")
#Or,
data("AirPassengers")
data <- AirPassengers

#To convert the data into time series object(if it is not)
data_ts <- ts(data$column_name , frequency = 12)

fit <- auto.arima(data_ts)
result <- forecast(fit,h = 20)
plot(result)