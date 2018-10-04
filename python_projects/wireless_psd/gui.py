# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'untitled.ui'
#
# Created by: PyQt5 UI code generator 5.6
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QTimer
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt5 import NavigationToolbar2QT as NavigationToolbar
import matplotlib.pyplot as plt
from matplotlib.figure import Figure
import numpy as np
import serial as sr
import threading
from time import sleep
import math
import pyqtgraph as pg
from pyqtgraph.Qt import QtGui, QtCore
import pandas as pd
import datetime

save_path = "//192.168.13.10/Public/hattori/sens/"


class Ui_MainWindow(object):
    timer: QTimer

    def setupUi(self, MainWindow, port):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(1800, 900)
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
        self.item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        self.tabWidget = QtWidgets.QTabWidget(self.splitter)
        self.tabWidget.setObjectName("tabWidget")
        self.tab = QtWidgets.QWidget()
        self.tab.setObjectName("tab")
        self.tabWidget.addTab(self.tab, "")
        #self.tabWidget.addTab(self.tab, "")
        #self.tab_2 = QtWidgets.QWidget()
        #self.tab_2.setObjectName("tab_2")
        #self.tabWidget.addTab(self.tab_2, "")
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

        #　glaph
        self.view_data_len = 35
        self.counter = 0
        self.tree_counter = 0
        self.times = np.arange(0, 500)
        self.vx1 = np.zeros(len(self.times))
        self.vx2 = np.zeros(len(self.times))
        self.vy1 = np.zeros(len(self.times))
        self.vy2 = np.zeros(len(self.times))

        for i in range(0, self.view_data_len-1):
            self.item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)

        # four terminal voltage
        self.glaph_tab = pg.GraphicsWindow(title="four terminal voltage")
        self.p1 = self.glaph_tab.addPlot(title="Vx1")
        #self.p1.setXRange(0,5)
        self.glaph_tab.nextRow()
        self.p2 = self.glaph_tab.addPlot(title="Vx2")
        #self.p2.setXRange(0, 5)
        self.glaph_tab.nextRow()
        self.p3 = self.glaph_tab.addPlot(title="Vx3")
        #self.p3.setXRange(0, 5)
        self.glaph_tab.nextRow()
        self.p4 = self.glaph_tab.addPlot(title="Vx4")
        #self.p4.setXRange(0, 5)
        self.curve1 = self.p1.plot(self.times, self.vx1)
        self.curve2 = self.p2.plot(self.times, self.vx2)
        self.curve3 = self.p3.plot(self.times, self.vy1)
        self.curve4 = self.p4.plot(self.times, self.vy2)

        # top line
        self.p1_vline = pg.InfiniteLine(angle=90, movable=False)
        self.p2_vline = pg.InfiniteLine(angle=90, movable=False)
        self.p3_vline = pg.InfiniteLine(angle=90, movable=False)
        self.p4_vline = pg.InfiniteLine(angle=90, movable=False)
        self.p1.addItem(self.p1_vline, ignoreBounds=True)
        self.p2.addItem(self.p2_vline, ignoreBounds=True)
        self.p3.addItem(self.p3_vline, ignoreBounds=True)
        self.p4.addItem(self.p4_vline, ignoreBounds=True)

        layout_glaph_tab = QtWidgets.QVBoxLayout()
        layout_glaph_tab.addWidget(self.glaph_tab)
        self.tab.setLayout(layout_glaph_tab)

        # relative story displacement
        """
        self.glaph_tab2 = pg.GraphicsWindow(title="relative story displacement")
        self.p0 = self.glaph_tab2.addPlot(title="X-Y")
        self.p0.showGrid(x=True, y=True)
        self.curve0 = self.p0.plot([0], [0])

        layout_glaph_tab2 = QtWidgets.QVBoxLayout()
        layout_glaph_tab2.addWidget(self.glaph_tab2)
        self.tab_2.setLayout(layout_glaph_tab2)
        """

        # serial communication
        self.port = port
        self.ser = sr.Serial(str(self.port), 115200)
        self.ser.flushInput()

        self.ser.write(b"sf,1\r\n")
        data_b = self.ser.read(5)
        print(data_b)

        self.ser.write(b"ss,40000001\r\n")
        data_b = self.ser.read(5)
        print(data_b)

        self.ser.write(b"sr,90000000\r\n")
        data_b = self.ser.read(5)
        print(data_b)

        self.ser.write(b"pz\r\n")
        data_b = self.ser.read(5)
        print(data_b)

        self.ser.write(b"ps,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\r\n")
        data_b = self.ser.read(5)
        print(data_b)

        self.ser.write(b"pc,EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE,1A,20\r\n")
        data_b = self.ser.read(5)
        print(data_b)

        self.ser.write(b"r,1\r\n")
        data_b = self.ser.read(8)
        print(data_b)
        sleep(5)

        self.ser.flushInput()
        self.ser.write(b"e,0,001ec0550fd1\r\n")
        data_b = self.ser.read(16)
        print(data_b)

        self.ser.write(b"cuwc,123456789012345678901234567890ff,1\r\n")
        data_b = self.ser.read(20)
        print(data_b)
        sleep(3)
        self.ser.flushInput()

        self.acx = 0
        self.acy = 0
        self.acz = 0
        self.gyx = 0
        self.gyy = 0
        self.gyz = 0

        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.serial_monitor)
        self.timer.start()
        self.read_data_length = 55
        self.unit_data_set = int(self.read_data_length / 11)
        self.plot_counter = 0
        self.plot_pich = 10

        # save
        d = datetime.datetime.today()
        self.filename = ("wirelsespsd_" + str(d.year) + '_' + str(d.month) + '_' +
                         str(d.day) + '_' + str(d.hour) + '_' +
                         str(d.minute) + '_' + str(d.second) + ".csv")
        df_init = pd.DataFrame({'vx1 [V]':np.array([0]),
                                'vx2 [V]':np.array([0]),
                                'vy1 [V]':np.array([0]),
                                'vy2 [V]':np.array([0]),
                                'x':np.array([0]),
                                'y':np.array([0])})
        df_init.to_csv(save_path + self.filename)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(1)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)


    def serial_monitor(self):
        data_b = self.ser.read(55)
        print(data_b)

        if "F" == chr(data_b[12]) and "A" == chr(data_b[49]) and "A" == chr(data_b[50]) and "A" == chr(data_b[51]):
            acxh = 16 *int(chr(data_b[16]), 16) + int(chr(data_b[17]), 16)
            acxl = 16 *int(chr(data_b[18]), 16) + int(chr(data_b[19]), 16)
            acx = acxh*256 + acxl
            acyh = 16 *int(chr(data_b[20]), 16) + int(chr(data_b[21]), 16)
            acyl = 16 *int(chr(data_b[22]), 16) + int(chr(data_b[23]), 16)
            acy = acyh*256 + acyl
            aczh = 16 *int(chr(data_b[24]), 16) + int(chr(data_b[25]), 16)
            aczl = 16 *int(chr(data_b[26]), 16) + int(chr(data_b[27]), 16)
            acz = aczh*256 + aczl
            gyxh = 16 *int(chr(data_b[28]), 16) + int(chr(data_b[29]), 16)
            gyxl = 16 *int(chr(data_b[30]), 16) + int(chr(data_b[31]), 16)
            gyx = gyxh*256 + gyxl
            gyyh = 16 * int(chr(data_b[28]), 16) + int(chr(data_b[29]), 16)
            gyyl = 16 * int(chr(data_b[30]), 16) + int(chr(data_b[31]), 16)
            gyy = gyyh * 256 + gyyl
            gyzh = 16 * int(chr(data_b[28]), 16) + int(chr(data_b[29]), 16)
            gyzl = 16 * int(chr(data_b[30]), 16) + int(chr(data_b[31]), 16)
            gyz = gyzh * 256 + gyzl
            print("imu")

        elif "0" == chr(data_b[12]) and "A" == chr(data_b[49]) and "A" == chr(data_b[50]) and "A" == chr(data_b[51]):
            px1h = 16 *int(chr(data_b[16]), 16) + int(chr(data_b[17]), 16)
            px1l = 16 *int(chr(data_b[18]), 16) + int(chr(data_b[19]), 16)
            self.vx1[self.counter] = 5.0 * (px1h*256 + px1l)/4096
            px2h = 16 *int(chr(data_b[20]), 16) + int(chr(data_b[21]), 16)
            px2l = 16 *int(chr(data_b[22]), 16) + int(chr(data_b[23]), 16)
            self.vx2[self.counter] = 5.0 * (px2h*256 + px2l)/4096
            py1h = 16 *int(chr(data_b[24]), 16) + int(chr(data_b[25]), 16)
            py1l = 16 *int(chr(data_b[26]), 16) + int(chr(data_b[27]), 16)
            self.vy1[self.counter] = 5.0 * (py1h*256 + py1l)/4096
            py2h = 16 *int(chr(data_b[28]), 16) + int(chr(data_b[29]), 16)
            py2l = 16 *int(chr(data_b[30]), 16) + int(chr(data_b[31]), 16)
            self.vy2[self.counter] = 5.0 * (py2h*256 + py2l)/4096

            self.x = ((self.vy1[self.counter] + self.vy1[self.counter]) - (
                        self.vx1[self.counter] + self.vy2[self.counter])) / (
                                 self.vx1[self.counter] + self.vx2[self.counter] + self.vy1[self.counter] + self.vy2[
                             self.counter])
            self.y = ((self.vx2[self.counter] + self.vy2[self.counter]) - (
                        self.vx1[self.counter] + self.vy1[self.counter])) / (
                                 self.vx1[self.counter] + self.vx2[self.counter] + self.vy1[self.counter] + self.vy2[
                             self.counter])

            df = pd.DataFrame(columns =
                          [self.vx1[self.counter],
                           self.vx2[self.counter],
                           self.vy1[self.counter],
                           self.vy2[self.counter],
                           self.x,
                           self.y])
            df.to_csv(save_path + self.filename, mode="a")

            print("psd")
            print(df)

        else:
            print("missed")
            """
            df = pd.DataFrame(columns =
                          [self.vx1[self.counter],
                           self.vx2[self.counter],
                           self.vy1[self.counter],
                           self.vy2[self.counter],
                           self.x,
                           self.y])
            df.to_csv(save_path + self.filename, mode="a")
            """
            print("kanopero")

            while b"\n" != self.ser.read(1):
                pass


        # Detect first characters

        """
        self.tag = b'X'
        while self.tag != b't':
            self.tag = self.ser.read(1)
        while self.tag != b'o':
            self.tag = self.ser.read(1)
        while self.tag != b'p':
            self.tag = self.ser.read(1)

        data_b = self.ser.read(self.read_data_length - 3)
        #print(data_b)
        #print(len(data_b))

        self.vx1[self.counter] = 5 * ((data_b[0] << 8) + data_b[1]) / 4096
        self.vx2[self.counter] = 5 * ((data_b[2] << 8) + data_b[3]) / 4096
        self.vy1[self.counter] = 5 * ((data_b[4] << 8) + data_b[5]) / 4096
        self.vy2[self.counter] = 5 * ((data_b[6] << 8) + data_b[7]) / 4096
        """

        if self.plot_counter == self.plot_pich:
            self.treeWidget.takeTopLevelItem(0)
            self.item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
            self.treeWidget.topLevelItem(self.view_data_len - 1).setText(0, str(self.vx1[self.counter]))
            self.treeWidget.topLevelItem(self.view_data_len - 1).setText(1, str(self.vx2[self.counter]))
            self.treeWidget.topLevelItem(self.view_data_len - 1).setText(2, str(self.vy1[self.counter]))
            self.treeWidget.topLevelItem(self.view_data_len - 1).setText(3, str(self.vy2[self.counter]))
            self.treeWidget.topLevelItem(self.view_data_len - 1).setText(4, str(self.x))
            self.treeWidget.topLevelItem(self.view_data_len - 1).setText(5, str(self.y))
            self.curve1.setData(self.times, self.vx1)
            self.curve2.setData(self.times, self.vx2)
            self.curve3.setData(self.times, self.vy1)
            self.curve4.setData(self.times, self.vy2)
            # self.curve0.setData([self.x], [self.y])
            self.p1_vline.setPos(self.counter)
            self.p2_vline.setPos(self.counter)
            self.p3_vline.setPos(self.counter)
            self.p4_vline.setPos(self.counter)
            self.p1.setYRange(0, 5.2)
            self.p2.setYRange(0, 5.2)
            self.p3.setYRange(0, 5.2)
            self.p4.setYRange(0, 5.2)
            self.plot_counter = 0


        self.counter += 1
        self.plot_counter += 1
        if self.counter == len(self.times):
            self.counter = 0


    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Hattori -PSD-"))
        self.treeWidget.headerItem().setText(0, _translate("MainWindow", "VX1"))
        self.treeWidget.headerItem().setText(1, _translate("MainWindow", "VX2"))
        self.treeWidget.headerItem().setText(2, _translate("MainWindow", "VY1"))
        self.treeWidget.headerItem().setText(3, _translate("MainWindow", "VY2"))
        self.treeWidget.headerItem().setText(4, _translate("MainWindow", "X"))
        self.treeWidget.headerItem().setText(5, _translate("MainWindow", "Y"))
        __sortingEnabled = self.treeWidget.isSortingEnabled()
        self.treeWidget.setSortingEnabled(False)
        self.treeWidget.topLevelItem(0).setText(0, _translate("MainWindow", "0"))
        self.treeWidget.topLevelItem(0).setText(1, _translate("MainWindow", "0"))
        self.treeWidget.topLevelItem(0).setText(2, _translate("MainWindow", "0"))
        self.treeWidget.topLevelItem(0).setText(3, _translate("MainWindow", "0"))
        self.treeWidget.topLevelItem(0).setText(4, _translate("MainWindow", "0"))
        self.treeWidget.topLevelItem(0).setText(5, _translate("MainWindow", "0"))
        self.treeWidget.setSortingEnabled(__sortingEnabled)
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab), _translate("MainWindow", "For terminal outputs"))
        #self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_2), _translate("MainWindow", "Relative story displacement"))
        self.menukanopero.setTitle(_translate("MainWindow", "kanopero"))
