install.packages("TTR")
require(TTR)

#We can provide the path for csv file
var <- read.csv("/path/to/csvfile")
#We can use the AirPassengers data which is present in R as default as 
#data("AirPassengers")
#data <- AirPassengers

#Length of the wtsvar should be equal to the length of the window that we are taking average on. 
wtsvar <- c(0.5,0.3,0.2,0.1)
length(wtsvar)
result <- WMA(data, n = 4, wts = wtsvar)
plot(data, col = 1)
lines(result, col = 2)
legend("topleft", col = 1:2,lty = 1, c("Actual", "Fitted"))
