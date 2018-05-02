#This file is for plotting the anomalies resulted from NAB detectors


import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
from datetime import datetime

data = pd.read_csv('/path/to/nab_results.csv')

#For converting the 'data' into the format required for plotting with time as x-axis
dat = [None] * len(data['value'])
time = data['timestamp'].astype(basestring)
for i in range(0,len(time)):
    dat[i] = datetime.strptime(time[i], '%Y-%m-%d %H:%M:%S')

#For plotting raw data without anomalies
plt.figure( figsize = (10,6))
plt.plot(dat,expose_df.value)

#For extractig the points which are anomalies using anomaly_score from the data

#Threshold value for categorize the data point as anomaly 
threshold = 0.5
newdata = data[data.anomaly_score >= threshold]


#For extracting the time column for anomalies
dat_new = [None] * len(newdata['value'])
time1 = newdata['timestamp'].astype(basestring)
for i in range(0,len(time1)):
    dat_new[i] = datetime.strptime(time1.iloc[i], '%Y-%m-%d %H:%M:%S')

#For including the anomalies in the graph with a red circle,
plt.plot(dat_new, newdata['value'],"ro")

#For seeing the result
plt.show()
