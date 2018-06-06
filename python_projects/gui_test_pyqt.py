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
import math
import pyqtgraph as pg
from pyqtgraph.Qt import QtGui, QtCore

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(3200, 1600)
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

        #　glaph
        self.view_data_len = 100
        self.counter = 0
        self.tree_counter = 0
        self.times = np.arange(0, 1000)
        self.vx1 = np.zeros(len(self.times))
        self.vx2 = np.zeros(len(self.times))
        self.vy1 = np.zeros(len(self.times))
        self.vy2 = np.zeros(len(self.times))

        for i in range(0, self.view_data_len-1):
            self.item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)

        # four terminal voltage
        self.glaph_tab = pg.GraphicsWindow(title="four terminal voltage")
        self.p1 = self.glaph_tab.addPlot(title="Vx1")
        self.glaph_tab.nextRow()
        self.p2 = self.glaph_tab.addPlot(title="Vx2")
        self.glaph_tab.nextRow()
        self.p3 = self.glaph_tab.addPlot(title="Vx3")
        self.glaph_tab.nextRow()
        self.p4 = self.glaph_tab.addPlot(title="Vx4")

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
        self.glaph_tab2 = pg.GraphicsWindow(title="relative story displacement")
        self.p0 = self.glaph_tab2.addPlot(title="X-Y")
        self.p0.showGrid(x=True, y=True)
        self.curve0 = self.p0.plot([0], [0])

        layout_glaph_tab2 = QtWidgets.QVBoxLayout()
        layout_glaph_tab2.addWidget(self.glaph_tab2)
        self.tab_2.setLayout(layout_glaph_tab2)

        # serial communication
        self.ser = sr.Serial("COM2", 9600)
        self.ser.flushInput()
        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.serial_monitor)
        self.timer.start(50)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(1)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)


    def serial_monitor(self):
        data_b = self.ser.read(36)
        print(data_b)
        bytes_list = list(data_b)
        print(bytes_list)
        raw_vx1 = []
        raw_vx2 = []
        raw_vy1 = []
        raw_vy2 = []

        for i in range(len(data_b)-9):
            if data_b[i] == 0:
                raw_vx1.append(data_b[i+1] * 256 + data_b[i+2])
                raw_vx2.append(data_b[i+3] * 256 + data_b[i+4])
                raw_vy1.append(data_b[i+5] * 256 + data_b[i+6])
                raw_vy2.append(data_b[i+7] * 256 + data_b[i+8])
        self.vx1[self.counter] = 5 * raw_vx1[0] / 4096
        self.vx2[self.counter] = 5 * raw_vx2[0] / 4096
        self.vy1[self.counter] = 5 * raw_vy1[0] / 4096
        self.vy2[self.counter] = 5 * raw_vy2[0] / 4096
        self.x = ((self.vx2[self.counter]+self.vy1[self.counter]) - (self.vx1[self.counter]+self.vy2[self.counter]))/(self.vx1[self.counter]+self.vx2[self.counter]+self.vy1[self.counter]+self.vy2[self.counter])
        self.y = ((self.vx2[self.counter]+self.vy2[self.counter]) - (self.vx1[self.counter]+self.vy1[self.counter]))/(self.vx1[self.counter]+self.vx2[self.counter]+self.vy1[self.counter]+self.vy2[self.counter])

        if self.tree_counter == self.view_data_len-1:
            self.treeWidget.takeTopLevelItem(0)
            self.item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        self.treeWidget.topLevelItem(int(self.tree_counter)).setText(0, str(self.vx1[self.counter]))
        self.treeWidget.topLevelItem(int(self.tree_counter)).setText(1, str(self.vx2[self.counter]))
        self.treeWidget.topLevelItem(int(self.tree_counter)).setText(2, str(self.vy1[self.counter]))
        self.treeWidget.topLevelItem(int(self.tree_counter)).setText(3, str(self.vy2[self.counter]))
        self.treeWidget.topLevelItem(int(self.tree_counter)).setText(4, str(self.x))
        self.treeWidget.topLevelItem(int(self.tree_counter)).setText(5, str(self.y))

        self.curve1.setData(self.times, self.vx1)
        self.curve2.setData(self.times, self.vx2)
        self.curve3.setData(self.times, self.vy1)
        self.curve4.setData(self.times, self.vy2)
        self.curve0.setData([self.x], [self.y])

        self.p1_vline.setPos(self.counter)
        self.p2_vline.setPos(self.counter)
        self.p3_vline.setPos(self.counter)
        self.p4_vline.setPos(self.counter)

        if self.tree_counter < self.view_data_len-1:
            self.tree_counter += 1
        self.counter += 1
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
        """
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
        """
        self.treeWidget.setSortingEnabled(__sortingEnabled)
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab), _translate("MainWindow", "For terminal outputs"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_2), _translate("MainWindow", "Relative story displacement"))
        self.menukanopero.setTitle(_translate("MainWindow", "kanopero"))
