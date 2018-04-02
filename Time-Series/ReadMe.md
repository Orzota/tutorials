
<h2>Time Series Analysis</h2>

<h3>Introduction</h3>
“A time series is a series of data points indexed (or listed or graphed) in time order. Most
commonly, a time series is a sequence taken at successive equally spaced points in time. Thus
it is a sequence of discrete-time data.”
Or, simply, “a data which is collected based on time at regular intervals is known as time series
data”.<br/>
Time series analysis comprises methods for analyzing time series data to extract meaningful
statistics and other characteristics of time series data.
It focuses on comparing values of a single time series or multiple dependent time series at
different points in time.


<h3>Requirements</h3>

<ul>
  <li>Installed R of version 3.4.3 or above</li>
<li>Installed python of version 2.7.6 or above</li></ul>

<h3>Src</h3>

Each file in the source is named with the model that it is implementing.
“holts_smoothing1.R” and “holts_smoothing2.R” represents the Holts Smoothing algorithms
when the seasonality is less than 24 and when the seasonality is greater than 24 respectively.
“python_implementation.py” represents the python file for implementing the forecasting
algorithms.

<h3>TSstudio</h3>
The TSstudio package provides a set of tools for descriptive analysis of a time series data supporting “ts”, “mts”, “zoo” and “xts” objects.That includes rich and interactive visualization plots for seasonality, correlations, residuals, and forecasting performance plots.<br/>

"TSstudio.R" contains details on installing the the TSstudio package and how to use variety of time-series plots. The file itself loads some sample data and just by using the commands in the file, you can see the plots available

<h3>Data</h3>

The data folder contains the csv files for the algorithm implementation. You can use the
files "air_temperature.csv" for moving average,Weighted moving average and exponential smoothing.
That is a very small data set which can be loaded very fast.  You can use the "vineyard_data1.csv" for the same methods
mentioned above. The columns of "vineyard_data1.csv" are time, airtemperature, internal temperature, relativehumidity, soil moisture, solar radiation and leaf wetness in the same order. <br/>
The "AirPassengers" data set in the R studio(We can Directly load the data in R) can be used to
forecast using Holt Winters. We can observe that the forecast will be good and see the clear
match with the actual data.<br/>

For ARIMA, we can use "tractor-Sales.csv" or "AirPassengers" data which will result in good
forecasting.
