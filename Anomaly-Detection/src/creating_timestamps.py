#This file is for creating some dummy timestamps to the data(if no timestamp information is present in the data)
#so that the data can be used for NAB


import pandas as pd
from datetime import datetime
from datetime import timedelta

#Load the data that contains only values without timestamp
data = pd.read_csv("/path/to/csvfile.csv")

#Creating an object time of length of data.
time = [None] * len(data['value'])

#Creating a datetime object for "2013-12-02 21:20:00" timeframe
test_date = datetime(2013, 12, 2, 21, 20)

#Creating an interval for the timestamps. Here I am taking an interval of 5 minutes
diff = timedelta(0, 300)


#Stroing the timeframes
time[0] = test_date
for i in range (1,len(time)):
  time[i] = time[i-1] + diff

#For creating a dataframe with timestamp and data values
final_data = time
final_data['value'] = data['value']
