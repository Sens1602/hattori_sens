import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
from itertools import starmap
import numpy as np

def main():
    mpl.rcParams['agg.path.chunksize'] = 100000


    path = "//192.168.13.10/Public/hattori/" + \
           "r4_ch13.csv"
    smp = 50
    fig = plt.figure(figsize=(20, 10))

    df = pd.read_csv(path, delimiter=',')
    df.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
    df.fillna(0)
    array = df.as_matrix()

    # hex -> decimal
    f = lambda x: int(x, 16)
    x1 = np.array(list(map(f, array[:, 2])))
    x2 = np.array(list(map(f, array[:, 3])))
    y1 = np.array(list(map(f, array[:, 4])))
    y2 = np.array(list(map(f, array[:, 5])))
    print(x1)
    print(x2)
    print(y1)
    print(y2)

    # plot
    time = np.arange(0, len(x1)/smp, 1/smp)
    print(time)
    plt.plot(time, x1)
    plt.show()

if __name__ == '__main__':
    main()