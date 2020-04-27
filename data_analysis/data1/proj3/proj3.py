# This code is used for cleaning the dataframe. It will "drop" or "replace" the non-valid rows and values.
# We will explore different methods focussing on the column "normalized-losses".
# Some problematic values have been added to this column such as: "?", "", "NaN", "0"
# Como ejercicio adicional se mostrará 'normalized-losses' en diferentes escalas: SFS, Min-Max y Z-Score

import pandas as pd
import numpy as np
csv_path = "dataframe.csv"


df = pd.read_csv(csv_path, index_col=0)  # Por defecto, pd.read_csv crea un index en columna sin nombre. index_col=0 anula esto.

df.replace(["?","0"], np.NaN ,inplace=True)  # Transforma los valores ? y 0 en NaN.
df.dropna(subset=["normalized-losses"], axis=0, inplace=True)  # Ha eliminado 2 filas. Los valores NaN y "". 
df = df.astype({'normalized-losses' : 'int64'})

mean = df["normalized-losses"].mean()  # Obtenemos el valor medio
print(mean)
std = df["normalized-losses"].std()  # Obtenemos la desviación típica
print(std)

df = pd.read_csv(csv_path, index_col=0)

df.replace(["?","0","",np.NaN], mean ,inplace=True)  # Asignamos valor medio a todos los valores problemáticos.
df = df.astype({'normalized-losses' : 'int64'})

df.to_csv("dataframedropped.csv")


df["normalized-losses"] = (
  df["normalized-losses"] / 
  df["normalized-losses"].max()
  )

print(df.head())

# df["normalized-losses"] = (
#   (df["normalized-losses"] - df["normalized-losses"].min()) /
#   (df["normalized-losses"].max() - df["normalized-losses"].min())
#   )

# df["normalized-losses"] = (
#   (df["normalized-losses"] - df["normalized-losses"].mean()) /
#   (df["normalized-losses"].std())
#   )