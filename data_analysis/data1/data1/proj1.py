# The following program experiments with Print and display functions. Adds a Header row to the dataframe
# and finally creates "dataframe.csv". The dataframe that will be used in data2.py

import pandas as pd
from IPython.display import display

dataset_url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/autos/imports-85.data'
dataset_path = 'dataset.csv'

df = pd.read_csv(dataset_path)


#REPLACING THE FIRST ROW FOR A HEADER
headers = ['symboling','normalized-losses','make','fuel-type','aspiration','num-of-doors','body-style','drive-wheels','engine-location','wheel-base','length','width','height','curb-weight','engine-type','num-of-cilinders','engine-size','fuel-syst','bore','stroke','compression-ratio','horsepower','peak-rpm','city-mpg','highway-mpg','price']
df.columns = headers
data_top = df.head()

display(data_top)  # Print y display hacen lo mismo
print(data_top)

#Reloading dataset and adding a heading
df = pd.read_csv(dataset_path,names = headers)
data_top = df.head()
print(data_top)

#Saves sataframe with headings
export_path = "dataframe.csv"
df.to_csv(export_path)