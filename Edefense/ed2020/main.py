import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
from itertools import starmap
import numpy as np
import glob
import os

def main():
    mpl.rcParams['agg.path.chunksize'] = 100000
    path = "C:/Users/Kouhei/Documents/edefense/20191204/"

    # calibration data
    read_name_cal = "XYS200_DPSD2018_no2_121.csv"

    # experimental data
    read_name_meadata = "*ch*.csv"

    smp = 50
    fig = plt.figure(figsize=(20, 10))

    ###### calibration ######
    df0 = pd.read_csv(path+read_name_cal, delimiter=',', skiprows=5)
    print(df0)
    df0.columns = ["Xtrue", "Ytrue", "X1", "Y1", "X2", "Y2", "na", "na", "na", "na"]
    df0.fillna(0)
    array0 = df0.values

    # hex -> decimal
    # v1 <-> y1, v2 <-> x2, v3 <-> y2, v4 <-> x1
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
    csvs = glob.glob(path+read_name_meadata)
    print(csvs)
    f = lambda x: int(x, 16)

    for i in range(len(csvs)):
        print(csvs[i])
        df1 = pd.read_csv(csvs[i], delimiter=',', dtype='object')
        df1.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
        array1 = df1.values
        df1.fillna(0)
        array1 = np.delete(array1, -1, 0)
        print(df1)
        # hex -> decimal
        # v1 <-> y1, v2 <-> x2, v3 <-> y2, v4 <-> x1
        y1_exp = np.array(list(map(f, array1[:, 2])))
        x2_exp = np.array(list(map(f, array1[:, 3])))
        y2_exp = np.array(list(map(f, array1[:, 4])))
        x1_exp = np.array(list(map(f, array1[:, 5])))
        x_raw = ((x2_exp+y1_exp)-(x1_exp+y2_exp))/(x1_exp+x2_exp+y1_exp+y2_exp)
        y_raw = ((x2_exp+y2_exp)-(x1_exp+y1_exp))/(x1_exp+x2_exp+y1_exp+y2_exp)
        x_exp = np.poly1d(res1)(x_raw)
        y_exp = np.poly1d(res2)(y_raw)
        time = np.arange(0, len(x_raw)/smp, 1/smp)

        ###### save ######
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
        filename, ext = os.path.splitext(os.path.basename(csvs[i]))
        print(df2)
        df2.to_csv(path+filename+"_out.csv")


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

"""
def main():
    mpl.rcParams['agg.path.chunksize'] = 100000


    #meadata_path = "//192.168.13.10/Public/sens/実験データ/2019_02_01/"
    meadata_path = "C:/Users/Kouhei/Documents/edefense/20191204/"
    calib_path = "C:/Users/Kouhei/Documents/edefense/calib_2020_before/"
    read_name = "r1_ch11.csv"
    out_name = "r3_ch09_out.csv"
    smp = 50
    fig = plt.figure(figsize=(20, 10))

    df0 = pd.read_csv(meadata_path+read_name, delimiter=',')
    df0.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
    df0.fillna(0)
    array = df0.values
    print(array)

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
    df1.to_csv(meadata_path+out_name)

    # plot
    ax1 = plt.subplot2grid((3, 3), (0, 0), colspan=3, xlabel="time", ylabel="X Intensity /a.u.")
    ax2 = plt.subplot2grid((3, 3), (1, 0), colspan=3, xlabel="time", ylabel="Y Intensity /a.u.")
    ax3 = plt.subplot2grid((3, 3), (2, 0), colspan=2, xlabel="time", ylabel="X and Y Intensity /a.u.")
    ax4 = plt.subplot2grid((3, 3), (2, 2), xlabel="X Intensity /a.u.", ylabel="Y Intensity /a.u.")

    ax1.plot(time, x)
    ax2.plot(time, y)
    ax3.plot(time, x-abs(x[0]))
    ax3.plot(time, y-abs(y[0]))
    ax4.plot(x-abs(x[0]), y-abs(y[0]))
    plt.subplots_adjust(left=0.02, right=0.98, bottom=0.02, top=0.98)
    fig.tight_layout()

    plt.show()


if __name__ == '__main__':
    main()
"""