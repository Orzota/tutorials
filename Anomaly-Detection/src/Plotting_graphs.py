#This file is for plotting time-series data with time as x-axis using 'matplotlib' library

import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
from datetime import datetime

data = pd.read_csv('/path/to/csvfile.csv')

#For converting the 'data' into the format required for plotting
dat = [None] * len(data['value'])
time = data['timestamp'].astype(basestring)
for i in range(0,len(time)):
    dat[i] = datetime.strptime(time[i], '%Y-%m-%d %H:%M:%S')


#For plotting the time-series data

#Can select the size of the figure
plt.figure(figsize = (10,6))
plt.plot(dat,data['values'])
plt.show()
