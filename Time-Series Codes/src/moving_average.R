install.packages("smooth")
install.packages("forecast")
require(smooth)
require(forecast)

#We can provide the path for csv file
var <- read.csv("/path/to/csvfile")
#For forecast period
forp <- 10
result<-sma(var, order = 3, xlim = c(0,length(var)+forp), h = forp)
plot(result$actuals, col = 1)
lines(result$fitted, col = 2)
lines(sma_model$forecast, col = 3)
legend("topleft", col = 1:3,lty = 1, c("Actual", "Fitted", "Forecast"))

