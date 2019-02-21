import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
from itertools import starmap
import numpy as np

def main():
    mpl.rcParams['agg.path.chunksize'] = 100000
    path = "C:/Users/6969p/Downloads/"

    # calibration data
    read_name_cal = "XYS200_DPSD2018_no5_121.csv"
    # experimental data
    read_name_exp = "r4_ch13.csv"
    out_name_exp = "r4_ch13_out.csv"

    smp = 50
    fig = plt.figure(figsize=(20, 10))

    ###### calibration ######
    df0 = pd.read_csv(path+read_name_cal, delimiter=',', skiprows=4)
    df0.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
    df0.fillna(0)
    array0 = df0.as_matrix()

    # hex -> decimal
    # v1 <-> y1, v2 <-> x2, v3 <-> y2, v4 <-> x1
    """
    f = lambda x: int(x, 16)
    y1 = np.array(list(map(f, array[:, 2])))
    x2 = np.array(list(map(f, array[:, 3])))
    y2 = np.array(list(map(f, array[:, 4])))
    x1 = np.array(list(map(f, array[:, 5])))
    """
    xtrue = array0[:, 0]
    ytrue = array0[:, 1]
    y1 = array0[:, 2]
    x2 = array0[:, 3]
    y2 = array0[:, 4]
    x1 = array0[:, 5]
    x = ((x2+y1)-(x1+y2))/(x1+x2+y1+y2)
    y = ((x2+y2)-(x1+y1))/(x1+x2+y1+y2)
    index = np.arange(0, len(x))

    # linear approximation
    res1 = np.polyfit(x, xtrue, 1)
    XTRUE = np.poly1d(res1)(x)
    res2 = np.polyfit(y, ytrue, 1)
    YTRUE = np.poly1d(res2)(y)

    ###### Correction of experimental data using calibration data ######
    df1 = pd.read_csv(path+read_name_exp, delimiter=',')
    df1.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
    df1.fillna(0)
    array1 = df1.as_matrix()

    # hex -> decimal
    # v1 <-> y1, v2 <-> x2, v3 <-> y2, v4 <-> x1
    f = lambda x: int(x, 16)
    y1_exp = np.array(list(map(f, array1[:, 2])))
    x2_exp = np.array(list(map(f, array1[:, 3])))
    y2_exp = np.array(list(map(f, array1[:, 4])))
    x1_exp = np.array(list(map(f, array1[:, 5])))
    x_raw = ((x2_exp+y1_exp)-(x1_exp+y2_exp))/(x1_exp+x2_exp+y1_exp+y2_exp)
    y_raw = ((x2_exp+y2_exp)-(x1_exp+y1_exp))/(x1_exp+x2_exp+y1_exp+y2_exp)
    x_exp = np.poly1d(res1)(x_raw)
    y_exp = np.poly1d(res2)(y_raw)
    time = np.arange(0, len(x_raw)/smp, 1/smp)

    ###### plot ######
    df2 = pd.DataFrame({'T [s]': time,
                        "r_x": x_exp,
                        "r_y": y_exp,
                        "x_raw": x_raw,
                        "y_raw": y_raw,
                        "V1(Y1)": y1_exp,
                        "V2(X2)": x2_exp,
                        "V3(Y2)": y2_exp,
                        "V4(X1)": x1_exp,
                        "x-axis coefficient: a": res1[0],
                        "x-axis offset: b": res1[1],
                        "y-axis coefficient: a": res2[0],
                        "y-axis offset: b": res2[1]})
    df2.to_csv(path+out_name_exp)

    ###### plot ######
    ax1 = plt.subplot2grid((3, 3), (0, 0), colspan=3)
    ax2 = plt.subplot2grid((3, 3), (1, 0), colspan=3)
    ax3 = plt.subplot2grid((3, 3), (2, 0), colspan=2)
    ax4 = plt.subplot2grid((3, 3), (2, 2))
    ax1.scatter(x, xtrue)
    ax1.plot(x, XTRUE)
    ax2.scatter(y, ytrue)
    ax2.plot(y, YTRUE)

    #ax3.plot(time, -x_raw, color="blue", lw=0.5)
    ax3.scatter(time, -x_raw, color="blue", s=5)
    ax4.scatter(x, y)
    ax5 = ax3.twinx()
    #ax5.plot(time, x_exp, color="red", lw=0.5)
    ax5.scatter(time, x_exp, color="red", s=5)
    fig.tight_layout()
    plt.subplots_adjust(left=0.02, right=0.98, bottom=0.02, top=0.98)
    plt.show()


if __name__ == '__main__':
    main()