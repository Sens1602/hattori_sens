import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
from itertools import starmap
import numpy as np

def main():
    mpl.rcParams['agg.path.chunksize'] = 100000


    path = "C:/Users/Tanii_Lab/Documents/"
    read_name = "r4_ch13.csv"
    out_name = "r4_ch13_out.csv"
    smp = 50
    fig = plt.figure(figsize=(20, 10))

    df0 = pd.read_csv(path+read_name, delimiter=',')
    df0.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
    df0.fillna(0)
    array = df0.as_matrix()

    # hex -> decimal
    # v1 <-> y1, v2 <-> x2, v3 <-> y2, v4 <-> x1
    f = lambda x: int(x, 16)
    y1 = np.array(list(map(f, array[:, 2])))
    x2 = np.array(list(map(f, array[:, 3])))
    y2 = np.array(list(map(f, array[:, 4])))
    x1 = np.array(list(map(f, array[:, 5])))

    x = ((x2+y1)-(x1-y2))/(x1+x2+y1+y2)
    y = ((x2+y2)-(x1+y1))/(x1+x2+y1+y2)
    time = np.arange(0, len(x)/smp, 1/smp)

    # save
    df1 = pd.DataFrame({'T [s]': time,
                       'V1(Y1)': y1,
                       'V2(X2)': x2,
                       'V3(Y2)': y2,
                       'V4(X1)': x1,
                       'x': x,
                       'y': y})
    df1.to_csv(path+out_name)

    # plot
    ax0 = fig.add_subplot(3, 1, 1)
    ax1 = fig.add_subplot(3, 1, 2)
    ax2 = fig.add_subplot(3, 1, 3)

    ax0.plot(time, x)
    ax1.plot(time, y)
    ax2.plot(time, x-(abs(x[0])))
    ax2.plot(time, y-(abs(y[0])))

    fig.tight_layout()
    plt.subplots_adjust(left=0.02, right=0.98, bottom=0.02, top=0.98)
    plt.show()


if __name__ == '__main__':
    main()