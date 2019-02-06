import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
from itertools import starmap
import numpy as np
import glob
import os


def main():
    mpl.rcParams['agg.path.chunksize'] = 100000

    path = "//192.168.13.10/Public/sens/measurment_data/2019_01_31/"
    csvs = path + '*.csv'
    files = glob.glob(csvs)
    smp = 50
    print(files)
    fig = plt.figure(figsize=(20, 10))

    for file_ in files:
        df0 = pd.read_csv(file_, delimiter=',')
        df0.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
        df0.fillna(0)
        array = df0.as_matrix()
        array = np.delete(array, -1, 0)

        # hex -> decimal
        # v1 <-> y1, v2 <-> x2, v3 <-> y2, v4 <-> x1
        f = lambda alpha: int(alpha, 16)
        y1 = np.array(list(map(f, array[:, 2])))
        x2 = np.array(list(map(f, array[:, 3])))
        y2 = np.array(list(map(f, array[:, 4])))
        x1 = np.array(list(map(f, array[:, 5])))

        x = ((x2 + y1) - (x1 - y2)) / (x1 + x2 + y1 + y2)
        y = ((x2 + y2) - (x1 + y1)) / (x1 + x2 + y1 + y2)
        time = np.arange(0, len(x) / smp, 1 / smp)

        # save
        df1 = pd.DataFrame({'T [s]': time,
                            'V1(Y1)': y1,
                            'V2(X2)': x2,
                            'V3(Y2)': y2,
                            'V4(X1)': x1,
                            'x': x,
                            'y': y})

        # file name
        name = os.path.splitext((os.path.basename(file_)))[0]
        df1.to_csv(path + name + "dicimal.csv")


if __name__ == '__main__':
    main()
