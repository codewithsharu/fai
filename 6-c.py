# 6-c: Write a program to demonstrate pandas Merging, Joining and Concatenating

# importing pandas module
import pandas as pd 
 
# Define a dictionary containing employee data 
data1 = {'Name':['Gangotri', 'Karthik', 'Naresh', 'Pravallika'], 
        'Age':[27, 24, 22, 32], 
        'Address':['Nagpur', 'Kanpur', 'Allahabad', 'Kannuaj'], 
        'Qualification':['Msc', 'MA', 'MCA', 'Phd']} 
   
# Define a dictionary containing employee data 
data2 = {'Name':['Manoj', 'Varma', 'Kishore', 'Ritesh'], 
        'Age':[17, 14, 12, 52], 
        'Address':['Nagpur', 'Kanpur', 'Allahabad', 'Kannuaj'], 
        'Qualification':['Btech', 'B.A', 'Bcom', 'B.hons']} 
 
# Convert the dictionary into DataFrame  
df = pd.DataFrame(data1,index=[0, 1, 2, 3])
 
# Convert the dictionary into DataFrame  
df1 = pd.DataFrame(data2, index=[4, 5, 6, 7])
 
print(df, "\n\n", df1) 

frames = [df, df1]
 
res1 = pd.concat(frames)
print(res1)

# applying concat with axes join = 'inner'
res2 = pd.concat([df, df1], axis=1, join='inner')
print(res2)

# Now apply .append() function inorder to concat to dataframe using append function
res = df.append(df1)
print(res)

# Merging: using .merge() with one unique key combination using .merge() function
res = pd.merge(df, df1, on='key')
print(res)

#MERGE METHOD	     JOIN NAME	               DESCRIPTION
#left	          LEFT OUTER JOIN	      Use keys from left frame only
#right	          RIGHT OUTER JOIN	      Use keys from right frame only
#outer	          FULL OUTER JOIN	      Use union of keys from both frames
#inner	          INNER JOIN	          Use intersection of keys from both frames

#Now we set how = 'left' in order to use keys from left frame only using keys from left frame
res = pd.merge(df, df1, how='left', on=['key', 'key1'])
print(res)

# using keys from right frame
res1 = pd.merge(df, df1, how='right', on=['key', 'key1'])
print(res1)

# getting intersection of keys
res3 = pd.merge(df, df1, how='inner', on=['key', 'key1'])
prit(res3)

# joining dataframe
res = df.join(df1)
print(res)