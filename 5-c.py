#5-c: Write a program that demonstrates the row selection, row addition, and row deletion.

# Row Selection:
import pandas as pd

# making data frame from csv file
data = pd.read_csv("C:/Users/M.V.B.Chandrasekhar/Desktop/FAI/nba.csv", index_col ="Name")

# retrieving row by loc method
first = data.loc["Avery Bradley"]
second = data.loc["R.J. Hunter"]
print(first, "\n\n\n", second)

# Row Addition: In Order to add a Row in Pandas DataFrame, concat the old dataframe with new one.
import pandas as pd
	
# making data frame
df = pd.read_csv("C:/Users/M.V.B.Chandrasekhar/Desktop/FAI/nba.csv", index_col ="Name")
df.head(10)

new_row = pd.DataFrame({'Name':'Aditya', 'Team':'Engineering', 'Number':3,'Position':'PG', 'Age':33, 'Height':'6-2','Weight':189, 'College':'AITAM', 'Salary':99999},index =[0])
# simply concatenate both dataframes
df = pd.concat([new_row, df]).reset_index(drop = True)
df.head(5)

# Row Deletion: In Order to delete a row in Pandas DataFrame, use the drop() method. Rows is deleted by dropping Rows by index label.
import pandas as pd

# making data frame from csv file
data = pd.read_csv("C:/Users/M.V.B.Chandrasekhar/Desktop/FAI/nba.csv", index_col ="Name" )

# dropping passed values
data.drop(["Avery Bradley", "John Holland", "R.J. Hunter","R.J. Hunter"], inplace = True)

# display
print(data)