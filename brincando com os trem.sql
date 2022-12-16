-- Databricks notebook source
-- usando python num notebook SQL e criando tabela pra usar no SQL

%python

data= [
    {'nome': 'Danilo', 'idade': 34},
    {'nome': 'Carlos', 'idade': 31},
    {'nome': 'Alessa', 'idade': 12},
    {'nome': 'Dodo', 'idade': 25},
]

import pandas as pd

df = spark.createDataFrame(pd.DataFrame(data))
df.createTempView('fodase')



-- COMMAND ----------


SELECT *
FROM fodase
