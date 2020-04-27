 #  The objective is to bin the price (column 27 the last one) into a range of different bins.
 #  We will get also the dummy variables of "fuel" column.

import numpy as np
import pandas as pd

csv_path = "dataframe.csv"
df = pd.read_csv(csv_path, dtype = {"price":np.float64})


bins = np.linspace(min(df["price"]), max(df["price"]), 4)
group_names = ["Low","Medium","High"]
df["price-binned"] = pd.cut(df["price"],bins,labels=group_names,include_lowest=True)


dummy = pd.get_dummies(df["fuel-type"])
df = pd.concat([df,dummy],axis=1)


print(df.head())
