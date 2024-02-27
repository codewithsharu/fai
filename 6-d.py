#6-d:Creating dataframes from csv and excel files.

# import pandas module
import pandas as pd
df = pd.read_csv("CardioGoodFitness.csv")
print(df.head())

#from Excel files
import pandas as pd
# read by default 1st sheet of an excel file
dataframe1 = pd.read_excel('SampleWork.xlsx')

print(dataframe1)