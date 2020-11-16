 #  The objective is to deal with missing data for every column.
 #  The data replaced is the non-valid arguments and the 121.74233128834356 repeating value
 #  The ressult will be database_clean for working in Proj 6


import pandas as pd
import numpy as py
import matplotlib as plt

csv_path = "dataframe.csv"
df = pd.read_csv(csv_path, index_col="Unnamed: 0")

columns = df.columns
for column in columns:
    # Primero muestra todos los valores unicos de la colmna
    print(column)
    print(df[column].unique())

    # Busca y elimina los NaN y ""
    df_n = df[column].dropna()

    # Calcula Medias y sustituye el valor 121.74233128834356
    print(df[column].dtype)
    if df[column].dtype == "float64":
        mean = df_n.mean()
        print("mean is " + str(mean))

        df[column].replace(to_replace=121.74233128834356, value=mean, inplace=True)
        print(df[column].unique())

    elif df[column].dtype == "int64":
        mean = df_n.mean()
        print("mean is " + str(mean))

        df[column].replace(to_replace=121.74233128834356, value=mean, inplace=True)
        print(df[column].unique())

    elif df[column].dtype == "object":
        df[column].replace(to_replace="121.74233128834356", value="two", inplace=True)
        print(df[column].unique())

    print("\n")

print("Value 121.74233128834356 has been replaced in the data, now data base is clean and will be saved as database_clean.csv")
df.to_csv("database_clean.csv")