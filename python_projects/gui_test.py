# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'untitled.ui'
#
# Created by: PyQt5 UI code generator 5.6
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt5 import NavigationToolbar2QT as NavigationToolbar
import matplotlib.pyplot as plt
from matplotlib.figure import Figure
import numpy as np
import serial as sr
import threading
from time import sleep

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(1493, 993)
        self.centralWidget = QtWidgets.QWidget(MainWindow)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.centralWidget.sizePolicy().hasHeightForWidth())
        self.centralWidget.setSizePolicy(sizePolicy)
        self.centralWidget.setObjectName("centralWidget")
        self.splitter = QtWidgets.QSplitter(self.centralWidget)
        self.splitter.setGeometry(QtCore.QRect(0, 0, 1481, 941))
        self.splitter.setOrientation(QtCore.Qt.Horizontal)
        self.splitter.setObjectName("splitter")
        self.treeWidget = QtWidgets.QTreeWidget(self.splitter)
        self.treeWidget.setAutoScrollMargin(22)
        self.treeWidget.setObjectName("treeWidget")
        item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        self.tabWidget = QtWidgets.QTabWidget(self.splitter)
        self.tabWidget.setObjectName("tabWidget")
        self.tab = QtWidgets.QWidget()
        self.tab.setObjectName("tab")
        self.tabWidget.addTab(self.tab, "")
        self.tab_2 = QtWidgets.QWidget()
        self.tab_2.setObjectName("tab_2")
        self.tabWidget.addTab(self.tab_2, "")
        MainWindow.setCentralWidget(self.centralWidget)
        self.mainToolBar = QtWidgets.QToolBar(MainWindow)
        self.mainToolBar.setObjectName("mainToolBar")
        MainWindow.addToolBar(QtCore.Qt.TopToolBarArea, self.mainToolBar)
        self.statusBar = QtWidgets.QStatusBar(MainWindow)
        self.statusBar.setObjectName("statusBar")
        MainWindow.setStatusBar(self.statusBar)
        self.menuBar = QtWidgets.QMenuBar(MainWindow)
        self.menuBar.setGeometry(QtCore.QRect(0, 0, 1493, 26))
        self.menuBar.setObjectName("menuBar")
        self.menukanopero = QtWidgets.QMenu(self.menuBar)
        self.menukanopero.setObjectName("menukanopero")
        MainWindow.setMenuBar(self.menuBar)
        self.menuBar.addAction(self.menukanopero.menuAction())

        #　追記
        layout_main = QtWidgets.QHBoxLayout()
        layout_main.addWidget(self.splitter)
        self.centralWidget.setLayout(layout_main)

        self.glaph = PlotCanvas(None, width=5, height=5)
        #navi = NavigationToolbar(self.glaph, self)
        layout_glaph = QtWidgets.QVBoxLayout()
        layout_glaph.addWidget(self.glaph)
        #layout_glaph.addWidget(navi)
        self.tab.setLayout(layout_glaph)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(1)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        self.serial_thread = threading.Thread(target=self.serial_connect)
        self.serial_thread.start()


    def serial_connect(self):
        ser = sr.Serial("COM2", 9600)
        while(1):
            data_b = ser.read(9)
            print(data_b)
            bytes_list = list(data_b)

            raw_vx1 = bytes_list[0]*256+bytes_list[1]
            raw_vx2 = bytes_list[2]*256+bytes_list[3]
            raw_vy1 = bytes_list[4]*256+bytes_list[5]
            raw_vy2 = bytes_list[6]*256+bytes_list[7]
            vx1 = 5 * raw_vx1 / 4096
            vx2 = 5 * raw_vx2 / 4096
            vy1 = 5 * raw_vy1 / 4096
            vy2 = 5 * raw_vy2 / 4096
            x = ((vx2+vy1) - (vx1+vy2))/(vx1+vx2+vy1+vy2)
            y = ((vx2+vy2) - (vx1+vy1))/(vx1+vx2+vy1+vy2)

            data_set = [vx1, vx2, vy1, vy2, x, y]
            print(data_set)
            sleep(0.01)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "KHpsd"))
        self.treeWidget.headerItem().setText(0, _translate("MainWindow", "VX1"))
        self.treeWidget.headerItem().setText(1, _translate("MainWindow", "VX2"))
        self.treeWidget.headerItem().setText(2, _translate("MainWindow", "VY1"))
        self.treeWidget.headerItem().setText(3, _translate("MainWindow", "VY2"))
        self.treeWidget.headerItem().setText(4, _translate("MainWindow", "X"))
        self.treeWidget.headerItem().setText(5, _translate("MainWindow", "Y"))
        __sortingEnabled = self.treeWidget.isSortingEnabled()
        self.treeWidget.setSortingEnabled(False)
        self.treeWidget.topLevelItem(0).setText(0, _translate("MainWindow", "1"))
        self.treeWidget.topLevelItem(0).setText(1, _translate("MainWindow", "2"))
        self.treeWidget.topLevelItem(0).setText(2, _translate("MainWindow", "3"))
        self.treeWidget.topLevelItem(0).setText(3, _translate("MainWindow", "4"))
        self.treeWidget.topLevelItem(0).setText(4, _translate("MainWindow", "5"))
        self.treeWidget.topLevelItem(0).setText(5, _translate("MainWindow", "6"))
        self.treeWidget.topLevelItem(1).setText(0, _translate("MainWindow", "1"))
        self.treeWidget.topLevelItem(1).setText(1, _translate("MainWindow", "2"))
        self.treeWidget.topLevelItem(1).setText(2, _translate("MainWindow", "3"))
        self.treeWidget.topLevelItem(1).setText(3, _translate("MainWindow", "4"))
        self.treeWidget.topLevelItem(1).setText(4, _translate("MainWindow", "5"))
        self.treeWidget.topLevelItem(1).setText(5, _translate("MainWindow", "6"))
        self.treeWidget.topLevelItem(2).setText(0, _translate("MainWindow", "1"))
        self.treeWidget.topLevelItem(2).setText(1, _translate("MainWindow", "2"))
        self.treeWidget.topLevelItem(2).setText(2, _translate("MainWindow", "3"))
        self.treeWidget.topLevelItem(2).setText(3, _translate("MainWindow", "4"))
        self.treeWidget.topLevelItem(2).setText(4, _translate("MainWindow", "5"))
        self.treeWidget.topLevelItem(2).setText(5, _translate("MainWindow", "6"))
        self.treeWidget.setSortingEnabled(__sortingEnabled)
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab), _translate("MainWindow", "For terminal outputs"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_2), _translate("MainWindow", "Relative story displacement"))
        self.menukanopero.setTitle(_translate("MainWindow", "kanopero"))

class PlotCanvas(FigureCanvas):

    def __init__(self, parent=None, width=10, height=8, dpi=100):
        fig = Figure(figsize=(width, height), dpi=dpi)

        FigureCanvas.__init__(self, fig)
        self.setParent(parent)

        FigureCanvas.setSizePolicy(self,
                                   QtWidgets.QSizePolicy.Expanding,
                                   QtWidgets.QSizePolicy.Expanding)
        FigureCanvas.updateGeometry(self)
        self.plot_init()

    def plot_init(self):
        self.dt = 0.05
        self.t = np.arange(0, 10000, self.dt)
        self.steps = len(self.t)
        self.x = -1.6 * np.ones(self.steps)
        self.y = 0 * np.ones(self.steps)
        self.z = 0 * np.ones(self.steps)
        self.m = 0 * np.ones(self.steps)
        self.h = 0 * np.ones(self.steps)
        self.ica = 0 * np.ones(self.steps)

        self.a = 1
        self.b = 3.3
        self.c = 1
        self.d = 5
        self.r = 0.01
        self.s = 4
        self.i = 0
        self.xr = -2.5
        self.gcmp = 0
        self.delay = 0

        self.ax = self.figure.add_subplot(211)
        self.ax.set_title('N0')
        plt.title('Hindmarsh-Rose model')
        self.ax2 = self.figure.add_subplot(212)

        self.tmp_a = self.a
        self.tmp_b = self.b
        self.tmp_c = self.c
        self.tmp_d = self.d
        self.tmp_r = self.r
        self.tmp_s = self.s
        self.tmp_xr = self.xr
        self.tmp_i = self.i
        self.tmp_gcmp = self.gcmp
        self.tmp_delay = self.delay

        self.plot(self.a, self.b, self.c, self.d, self.r, self.s, self.xr,
                  self.i, self.gcmp, self.delay)

    def plot(self, a, b, c, d, r, s, xr, i, gcmp, delay):
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.r = r
        self.s = s
        self.xr = xr
        self.i = i
        self.gcmp = gcmp
        self.delay = delay
        self.n = 0
        self.iext = np.zeros(self.steps)
        for j in range(int(500 / self.dt), int(2000 / self.dt)):
            self.iext[j] = i

        for i in range(0, self.steps - 1):
            self.ica[i] = (self.m[i] ** 2) * self.h[i]
            self.k1x = (self.y[i] - self.a * self.x[i] ** 3 + self.b * self.x[i] ** 2 -
                        self.z[i] + self.iext[i] + self.gcmp * self.ica[i] +
                        self.n)

            self.k1y = (self.c - self.d * self.x[i] ** 2 - self.y[i])
            self.k1z = (self.r * (self.s * (self.x[i] - self.xr) - self.z[i]))

            self.m_inf = 1 / (1 + np.exp(-(self.x[i] + 1.5) / 0.25))
            self.h_inf = 1 / (1 + np.exp(-(self.x[i] + 2.3) / 0.17))
            self.t_m = 0.612 + (1 / (np.exp(-(self.x[i] + 4) / 0.5) + np.exp((self.x[i] + 0.42) / 0.5))) * 20
            if self.x[i] > -2.1:
                self.t_h = 28 + (np.exp(-(self.x[i] + 0.6) / 0.26)) * 20
            else:
                self.t_h = (np.exp((self.x[i] + 15) / 2.2)) * 20

            self.dm = -1 * (self.m[i] - self.m_inf) / self.t_m
            self.dh = -1 * (self.h[i] - self.h_inf) / self.t_h
            self.dn = -0.5 * self.n + np.random.randn() * self.delay

            self.x[i + 1] = self.x[i] + self.k1x * self.dt
            self.y[i + 1] = self.y[i] + self.k1y * self.dt
            self.z[i + 1] = self.z[i] + self.k1z * self.dt
            self.m[i + 1] = self.m[i] + self.dm * self.dt
            self.h[i + 1] = self.h[i] + self.dh * self.dt
            self.n += (self.dn * self.dt)

        self.line, = self.ax.plot(self.t, self.x)
        self.line2, = self.ax2.plot(self.t, self.ica)

        self.draw()