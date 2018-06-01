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
        #　追記
        self.glaph = PlotCanvas(None, width=5, height=5)
        self.t = [0 for i in range(100)]
        self.vx1 = [0 for i in range(100)]
        self.time = 0
        self.line, = self.glaph.ax.plot(self.t, self.vx1)
        #navi = NavigationToolbar(self.glaph, self)
        layout_glaph = QtWidgets.QVBoxLayout()
        layout_glaph.addWidget(self.glaph)
        #layout_glaph.addWidget(navi)
        self.tab.setLayout(layout_glaph)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(1)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        #self.serial_thread = threading.Thread(target=self.serial_monitor)
        #self.serial_thread.start()

        #　追記
        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.serial_monitor)
        self.timer.start(50)


    def serial_monitor(self):
        ser = sr.Serial("COM2", 9600)
        data_b = ser.read(9)
        print(data_b)
        bytes_list = list(data_b)
        self.line.remove()


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

        self.treeWidget.topLevelItem(0).setText(0, str(vx1))
        self.treeWidget.topLevelItem(0).setText(1, str(vx2))
        self.treeWidget.topLevelItem(0).setText(2, str(vy1))
        self.treeWidget.topLevelItem(0).setText(3, str(vy2))
        self.treeWidget.topLevelItem(0).setText(4, str(x))
        self.treeWidget.topLevelItem(0).setText(5, str(y))

        print(self.t)
        self.time += 1
        self.t.append(self.time)
        self.t.pop(0)
        self.vx1.append(vx1)
        self.vx1.pop(0)

        self.line, = self.glaph.ax.plot(self.t, self.vx1)
        self.glaph.ax.set_xlim(self.t[0], self.t[99])
        plt.draw()

        plt.pause(0.1)

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


        self.ax = self.figure.add_subplot(211)
        self.ax.set_title('VX1')
        plt.title('Hindmarsh-Rose model')
        self.ax2 = self.figure.add_subplot(212)
        self.ax2.set_title('VX2')
        self.draw()