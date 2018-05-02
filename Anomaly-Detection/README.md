<h2>Steps to be followed for running NAB:</h2> 
</br>
<h4>For installing NAB in local machine,</h4>
The steps for installation is in the below link.
https://github.com/numenta/NAB
</br>
</br>
<h4>For running NAB, </h4>
&nbsp;&nbsp;&nbsp;&nbsp; >cd NAB
</br>
&nbsp;&nbsp;&nbsp;&nbsp; >>>python run.py (This will run everything and produce result for all the anomaly detection methods.)
</br>
</br>
<h4>For help regarding arguments for run.py,</h4>
</br>
&nbsp;&nbsp;&nbsp;&nbsp; >>>python run.py --help
</br>
</br>
<h4>For running all the detector methods for a single data file,</h4>
we need to keep the csv file under 'data/' directory and create a json file under 'labels/' directory and include the file location along with the labelled anomalies(if the information is available) and 
run the following command. (Some examples are present in 'labels/' directory by default)
</br>
</br>
&nbsp;&nbsp;&nbsp;&nbsp; >>>python run.py --detect --windowsFile labels/new_json_file.json
</br>
</br>
<h4>For running only a particular detector for all the data that is present by default in NAB "data/" directory, </h4></br>
&nbsp;&nbsp;&nbsp;&nbsp; >>>python run.py -d detector_name
</br>
</br>
<h4>For running a particualar detector on a particular file, combine both the commands above </h4></br>
&nbsp;&nbsp;&nbsp;&nbsp; >>>python run.py -d detector_name --detect --windowsFile labels/new_json_file.json
</br>
</br>
<h4>For plotting the results,</h4>
After running the commands, the results are stored as csv files under 'results/' directory.The resulted file should be set as input to "plotting_nab_results.py" and change the thresholds according to anomaly detection method specified in 'thresholds.json' file located in 'config/' directory under NAB.
</br>
The resulted csv file can be given as input to "plotting_nab_results.py" and threshold can be changed accordingly to plot the anomalies along with the data. 
</br>
</br>
<h4>Note:</h4> Only time series data should be given as input to NAB detectors. If the data doesn't have any time column, dummy time column can be added to the data using "creating_timestamps.py"
