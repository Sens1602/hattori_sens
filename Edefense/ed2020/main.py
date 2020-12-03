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
    # representative calibration data
    read_name_cal = "XYS200_DPSD2018_no2_121.csv"
    # experimental data
    read_name_meadata = "*ch*.csv"
    csvs = glob.glob(path+read_name_meadata)
    print(csvs)
    # offset of relative story displacement
    # 耐震 No2, 3, 4, … 免振 No10, 11, 12, …
    offsets_x = [10, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] # mm
    offsets_y = [10, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] # mm

    smp = 50 # 50Hz
    fig = plt.figure(figsize=(20, 10))
    fig.suptitle("Horizontal axis: time [s], Vertical axis: Relative-story displacement [mm]")
    ax = []
    num_plot = 8
    """
    ax[0]   ax[4]
    ax[1]   ax[5]
    ax[2]   ax[6]
    ax[3]   ax[7]
    """
    # 耐震
    for i in range(int(num_plot/2)):
        ax.append(fig.add_subplot(4, 2, 2*i+1))
    # 免振
    for i in range(int(num_plot/2)):
        ax.append(fig.add_subplot(4, 2, 2*i+2))


    ###### calibration ######
    df0 = pd.read_csv(path+read_name_cal, delimiter=',', skiprows=5)
    #print(df0)
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
    """
    csvs = glob.glob(path+read_name_meadata)
    print(csvs)
    """
    f = lambda x: int(x, 16)

    for i in range(len(csvs)):
        df1 = pd.read_csv(csvs[i], delimiter=',', dtype='object')
        df1.columns = ["ch", "index", "X1", "Y1", "X2", "Y2"]
        array1 = df1.values
        df1.fillna(0)
        array1 = np.delete(array1, -1, 0)
        #print(df1)
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
        #print(df2)
        df2.to_csv(path+filename+"_out.csv")
        ax[i].plot(time, 0.1*x_exp-offsets_x[i], color="red")
        ax[i].plot(time, 0.1*y_exp-offsets_y[i], color="blue")

    ax[0].set_title("seismic isolated 1F")
    ax[1].set_title("seismic isolated 2F")
    ax[2].set_title("seismic isolated 3F")
    ax[3].set_title("seismic isolated 4F")
    ax[4].set_title("seismic force-resisting 1F")
    ax[5].set_title("seismic force-resisting 2F")
    ax[6].set_title("seismic force-resisting 3F")
    ax[7].set_title("seismic force-resisting 4F")

    fig.tight_layout(rect=[0, 0, 1, 0.96])
    #plt.subplots_adjust(left=0.02, right=0.98, bottom=0.02, top=0.98)
    plt.show()


if __name__ == '__main__':
    main()