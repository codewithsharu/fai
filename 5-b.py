#5-b: Write a program that demonstrates the column selection, column addition, and column deletion.

# importing the pandas library  
import pandas as pd  
  
info = {'one' : pd.Series([1, 2, 3, 4, 5, 6], index=['a', 'b', 'c', 'd', 'e', 'f']),  
   'two' : pd.Series([1, 2, 3, 4, 5, 6, 7, 8], index=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'])}  
  
d1 = pd.DataFrame(info)  
print (d1 ['one'])  

#column addition

# importing the pandas library  
import pandas as pd  
info = {'one' : pd.Series([1, 2, 3, 4, 5], index=['a', 'b', 'c', 'd', 'e']),  
   'two' : pd.Series([1, 2, 3, 4, 5, 6], index=['a', 'b', 'c', 'd', 'e', 'f'])}  
  
df = pd.DataFrame(info)  
  
# Add a new column to an existing DataFrame object   
print ("Add new column by passing series")  
df['three']=pd.Series([20,40,60],index=['a','b','c'])  
print (df)  
  
print ("Add new column using existing DataFrame columns")  
df['four']=df['one']+df['three']  
  
print (df)  

# Column Deletion
import pandas as pd  
info = {'one' : pd.Series([1, 2], index= ['a', 'b']),   
   'two' : pd.Series([1, 2, 3], index=['a', 'b', 'c'])}  
     
df = pd.DataFrame(info)  
print ("The DataFrame:")  
print (df)  
  
# using del function  
print ("Delete the first column:")  
del df['one']  
print (df)  
# using pop function  
print ("Delete the another column:")  
df.pop('two')  
print (df)  