#6-a:Write a program which use Pandas inbuilt visualization to plot following graphs: i) Bar plots ii) Histograms  iii) Line plots  iv) Scatter plots

import numpy as np
import pandas as pd

# There are some fake data csv files you can read in as dataframes
df1 = pd.read_csv('df1', index_col = 0)
df2 = pd.read_csv('df2')

df1['A'].hist()

import matplotlib.pyplot as plt
plt.style.use('ggplot')
df1['A'].hist()

#look like this after calling bmh style.
plt.style.use('bmh')
df1['A'].hist()

#Plots look like this after calling dark_background style.
plt.style.use('dark_background')
df1['A'].hist()

#Bar lot
df2.plot.bar()
df2.plot.bar(stacked = True)

df1['A'].plot.hist(bins = 50)

#Line plot
df1.plot.line(x = df1.index, y ='B', figsize =(12, 3), lw = 1)

#Scatter Plot
df1.plot.scatter(x ='A', y ='B')
df1.plot.scatter(x ='A', y ='B', c ='C', cmap ='coolwarm')
df1.plot.scatter(x ='A', y ='B', s = df1['C']*200)