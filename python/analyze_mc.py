import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from matplotlib import colors

df = pd.read_csv('./data/test_data.txt', sep=' ')
df2 = df['frequency':np.float64]
print(df2.head())
#plt.hist(df, bins=30, color='blue', edgecolor='black')
