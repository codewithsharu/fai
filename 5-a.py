# 5-1: Write a program that converts Pandas DataFrame and Series into numpy.array.

import pandas as pd
df = pd.DataFrame(
    [
        (1, 'A', 10.5, True),
        (2, 'B', 10.0, False),
        (3, 'A', 19.2, False),
        (4, 'C', 21.1, True),
        (5, 'A', 15.5, True),
        (6, 'C', 14.9, False),
        (7, 'C', 13.1, True),
        (8, 'B', 12.5, False),
        (9, 'C', 11.2, False),
        (10, 'A', 31.4, False),
        (11, 'D', 10.4, True),
    ],
    columns=['colA', 'colB', 'colC', 'colD']
)
print(df)

ndarray = df.to_numpy()
print(ndarray)