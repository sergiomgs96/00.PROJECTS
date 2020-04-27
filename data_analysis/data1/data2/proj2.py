# Este código tiene por objetivo mostrar los principales comandos de visualización del df durante la programación.
# df.dtypes muestra para cada columna, el type de los datos almacenados. 'pandas.core.series.Series'
# df.describe(include='all') muestra datos estadísticos para cada columna:
#   Cuenta de NoNulos, Valores únicos, Valor más alto, valor medio.
# df.info() muestra para cada columna el número de valores NoNulos y su data type.

import pandas as pd
csv_path = "dataframe.csv"
df = pd.read_csv(csv_path)

print(df.dtypes)
print(type(df.dtypes))

print(df.describe(include='all'))
print(type(df.describe(include='all')))

print(df.info())
print(type(df.info()))