#For TSstudio plots
install.packages("TSstudio")

#For converting time series data into formats required by the TSstudio
install.packages("xts")
install.packages("zoo")

#For loading data into R
install.packages("quantmod")

library(TSstudio)
library(xts)
library(zoo)
library(quantmod)

#TSstudio supports only data of  “ts”, “mts”, “zoo” and “xts” objects.
#For loading stockprices of popular companies
tckrs <- c("GOOGL", "FB", "AAPL", "MSFT")
getSymbols(tckrs, from = "2013-01-01",src = "yahoo")

#To plot the facebook closing Share 
facebook <- FB$FB.Close
ts_plot(facebook)

#To add slider and x,y titles in the plot 
ts_plot(Google, 
        title = "Facebook Stock Prices Since 2013",
        Xtitle = "Sourch: Yahoo Finance", 
        Ytitle = "Closing Price in USD",
        slider = TRUE
)

# For plotting all the series into one plot 
closing <- cbind(GOOGL$GOOGL.Close, FB$FB.Close, AAPL$AAPL.Close, MSFT$MSFT.Close)
names(closing) <- c("Google", "Facebook", "Apple", "Microsoft")

ts_plot(closing, 
        title = "Top Technology Companies Stocks Prices Since 2013",
        type = "single")


#To plot series as seperate plots
ts_plot(closing,
        title = "Top Technology Companies Stocks Prices Since 2013")




#For seasonality plots
#The stockprices data mentioned above cannot be used for seasonaliy plots because sesonality functions only work for data which has monthly and quarterly seasonality
# Load the US monthly natural gas consumption. 
data("USgas")
#For checking the class of the data
class(USgas)

#Basic Plot
ts_plot(USgas,
        title = "US Natural Gas Consumption",
        Xtitle = "Year",
        Ytitle = "Billion Cubic Feet"
)

#ts_seasonal provides 3 types of seasonal plots.
#normal- break series by year
#cycle - break sereis by cycle units
#box - represent cycle units with box plots.
ts_seasonal(USgas, type = "normal")
#ts_seasonal(USgas, type = "cycle")
#ts_seasonal(USgas, type = "box")

#For plotting all the mentioned above
ts_seasonal(USgas, type = "all")

#For plotting the heatmap from the data
ts_heatmap(USgas)

#For decomposing the data into trend,seasonal and random components
ts_decompose(USgas, type = "both")

