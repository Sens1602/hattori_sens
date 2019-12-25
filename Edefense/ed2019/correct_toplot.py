import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl

def main():
    mpl.rcParams['agg.path.chunksize'] = 100000

    path = "C:/Edefense2018/edefense2018_corrected_results/0201/"
    read_name = "r4_ch15_2019_02_01_out.csv"
    df0 = pd.read_csv(path+read_name, delimiter=',')
    df0.fillna(0)

    fig = plt.figure(figsize=(20, 10))
    ax1 = plt.subplot2grid((2, 2), (0, 0))
    ax2 = plt.subplot2grid((2, 2), (1, 0))
    ax3 = plt.subplot2grid((2, 2), (0, 1), rowspan=2)

    # plot
    ax1.plot(df0["T [s]"], df0["r_x"])
    ax2.plot(df0["T [s]"], df0["r_y"])
    # offset adjustment
    ax3.plot(df0["T [s]"], df0["r_x"] - df0.iat[0,2])
    ax3.plot(df0["T [s]"], df0["r_y"] - df0.iat[0,3])
    fig.tight_layout()
    plt.subplots_adjust(left=0.02, right=0.98, bottom=0.02, top=0.98)
    plt.show()


if __name__ == '__main__':
    main()